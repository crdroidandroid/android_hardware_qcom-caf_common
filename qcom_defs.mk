# Platform name variables - used in makefiles everywhere
MSMSTEPPE := sm6150
TRINKET := trinket #SM6125

# UM families
UM_3_18_FAMILY := msm8996 msm8937 msm8953
UM_4_4_FAMILY := msm8998 sdm660
UM_4_9_FAMILY := sdm845 sdm710
UM_4_14_FAMILY := msmnile $(MSMSTEPPE) $(TRINKET) atoll
UM_4_19_FAMILY := kona lito
UM_5_4_FAMILY := lahaina holi
UM_5_10_FAMILY := taro parrot
UM_5_15_FAMILY := kalama crow

# Conditions for bengal & bengal_515
ifneq ($(filter _515,$(TARGET_BOARD_SUFFIX)),)
   UM_5_15_FAMILY += bengal
else
   UM_4_19_FAMILY += bengal
endif
