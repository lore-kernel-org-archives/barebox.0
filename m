Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSmbX-0004zw-76
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 15:52:42 +0000
Message-ID: <1499269936.22075.32.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Jul 2017 17:52:16 +0200
In-Reply-To: <20170518120115.8040-1-s.hauer@pengutronix.de>
References: <20170518120115.8040-1-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] mmc: Consistently use EXT_CSD_* names from eMMC 5.1
 spec
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Am Donnerstag, den 18.05.2017, 14:01 +0200 schrieb Sascha Hauer:
> We have kept the EXT_CSD registers which were added in the 5.1 spec
> separately for no good reason. Order the EXT_CSD defines by register
> number instead. Also we had some duplicates, for these consistently
> use the names from the 5.1 spec.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This series seemed to have fallen through the cracks. I've applied it
now.

> ---
>  drivers/mci/mci-core.c | 48 ++++++++++++++--------------
>  include/mci.h          | 85 ++++++++++++++++++++++----------------------------
>  2 files changed, 61 insertions(+), 72 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 3da1c261a9..b6ef506540 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -469,7 +469,7 @@ static int mmc_change_freq(struct mci *mci)
>  		return err;
>  	}
>  
> -	cardtype = mci->ext_csd[EXT_CSD_CARD_TYPE] & EXT_CSD_CARD_TYPE_MASK;
> +	cardtype = mci->ext_csd[EXT_CSD_DEVICE_TYPE] & EXT_CSD_CARD_TYPE_MASK;
>  
>  	err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
>  
> @@ -499,13 +499,13 @@ static int mmc_change_freq(struct mci *mci)
>  		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED;
>  
>  	if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
> -			mci->ext_csd[EXT_CSD_REV] >= 3 && mci->ext_csd[EXT_CSD_BOOT_MULT]) {
> +			mci->ext_csd[EXT_CSD_REV] >= 3 && mci->ext_csd[EXT_CSD_BOOT_SIZE_MULT]) {
>  		int idx;
>  		unsigned int part_size;
>  
>  		for (idx = 0; idx < MMC_NUM_BOOT_PARTITION; idx++) {
>  			char *name, *partname;
> -			part_size = mci->ext_csd[EXT_CSD_BOOT_MULT] << 17;
> +			part_size = mci->ext_csd[EXT_CSD_BOOT_SIZE_MULT] << 17;
>  
>  			partname = basprintf("boot%d", idx);
>  			name = basprintf("%s.%s", mci->cdevname, partname);
> @@ -515,7 +515,7 @@ static int mmc_change_freq(struct mci *mci)
>  					MMC_BLK_DATA_AREA_BOOT);
>  		}
>  
> -		mci->ext_csd_part_config = mci->ext_csd[EXT_CSD_PART_CONFIG];
> +		mci->ext_csd_part_config = mci->ext_csd[EXT_CSD_PARTITION_CONFIG];
>  		mci->bootpart = (mci->ext_csd_part_config >> 3) & 0x7;
>  	}
>  
> @@ -863,10 +863,10 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
>  			csize = UNSTUFF_BITS(mci->csd, 48, 22);
>  			mci->capacity = (1 + csize) << 10;
>  		} else {
> -			mci->capacity = mci->ext_csd[EXT_CSD_SEC_CNT] << 0 |
> -				mci->ext_csd[EXT_CSD_SEC_CNT + 1] << 8 |
> -				mci->ext_csd[EXT_CSD_SEC_CNT + 2] << 16 |
> -				mci->ext_csd[EXT_CSD_SEC_CNT + 3] << 24;
> +			mci->capacity = mci->ext_csd[EXT_CSD_SEC_COUNT] << 0 |
> +				mci->ext_csd[EXT_CSD_SEC_COUNT + 1] << 8 |
> +				mci->ext_csd[EXT_CSD_SEC_COUNT + 2] << 16 |
> +				mci->ext_csd[EXT_CSD_SEC_COUNT + 3] << 24;
>  		}
>  	} else {
>  		cmult = UNSTUFF_BITS(mci->csd, 47, 3);
> @@ -907,16 +907,16 @@ static int mmc_compare_ext_csds(struct mci *mci, unsigned bus_width)
>  	if (bus_width == MMC_BUS_WIDTH_1)
>  		goto out;
>  	/* only compare read only fields */
> -	err = (mci->ext_csd[EXT_CSD_PARTITION_SUPPORT] ==
> -			bw_ext_csd[EXT_CSD_PARTITION_SUPPORT]) &&
> +	err = (mci->ext_csd[EXT_CSD_PARTITIONING_SUPPORT] ==
> +			bw_ext_csd[EXT_CSD_PARTITIONING_SUPPORT]) &&
>  		(mci->ext_csd[EXT_CSD_ERASED_MEM_CONT] ==
>  			bw_ext_csd[EXT_CSD_ERASED_MEM_CONT]) &&
>  		(mci->ext_csd[EXT_CSD_REV] ==
>  			bw_ext_csd[EXT_CSD_REV]) &&
> -		(mci->ext_csd[EXT_CSD_STRUCTURE] ==
> -			bw_ext_csd[EXT_CSD_STRUCTURE]) &&
> -		(mci->ext_csd[EXT_CSD_CARD_TYPE] ==
> -			bw_ext_csd[EXT_CSD_CARD_TYPE]) &&
> +		(mci->ext_csd[EXT_CSD_CSD_STRUCTURE] ==
> +			bw_ext_csd[EXT_CSD_CSD_STRUCTURE]) &&
> +		(mci->ext_csd[EXT_CSD_DEVICE_TYPE] ==
> +			bw_ext_csd[EXT_CSD_DEVICE_TYPE]) &&
>  		(mci->ext_csd[EXT_CSD_S_A_TIMEOUT] ==
>  			bw_ext_csd[EXT_CSD_S_A_TIMEOUT]) &&
>  		(mci->ext_csd[EXT_CSD_HC_WP_GRP_SIZE] ==
> @@ -933,14 +933,14 @@ static int mmc_compare_ext_csds(struct mci *mci, unsigned bus_width)
>  			bw_ext_csd[EXT_CSD_SEC_FEATURE_SUPPORT]) &&
>  		(mci->ext_csd[EXT_CSD_TRIM_MULT] ==
>  			bw_ext_csd[EXT_CSD_TRIM_MULT]) &&
> -		(mci->ext_csd[EXT_CSD_SEC_CNT + 0] ==
> -			bw_ext_csd[EXT_CSD_SEC_CNT + 0]) &&
> -		(mci->ext_csd[EXT_CSD_SEC_CNT + 1] ==
> -			bw_ext_csd[EXT_CSD_SEC_CNT + 1]) &&
> -		(mci->ext_csd[EXT_CSD_SEC_CNT + 2] ==
> -			bw_ext_csd[EXT_CSD_SEC_CNT + 2]) &&
> -		(mci->ext_csd[EXT_CSD_SEC_CNT + 3] ==
> -			bw_ext_csd[EXT_CSD_SEC_CNT + 3]) ?
> +		(mci->ext_csd[EXT_CSD_SEC_COUNT + 0] ==
> +			bw_ext_csd[EXT_CSD_SEC_COUNT + 0]) &&
> +		(mci->ext_csd[EXT_CSD_SEC_COUNT + 1] ==
> +			bw_ext_csd[EXT_CSD_SEC_COUNT + 1]) &&
> +		(mci->ext_csd[EXT_CSD_SEC_COUNT + 2] ==
> +			bw_ext_csd[EXT_CSD_SEC_COUNT + 2]) &&
> +		(mci->ext_csd[EXT_CSD_SEC_COUNT + 3] ==
> +			bw_ext_csd[EXT_CSD_SEC_COUNT + 3]) ?
>  				0 : -EINVAL;
>  
>  out:
> @@ -1248,7 +1248,7 @@ static int mci_blk_part_switch(struct mci_part *part)
>  		part_config |= part->part_cfg;
>  
>  		ret = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
> -				EXT_CSD_PART_CONFIG, part_config);
> +				EXT_CSD_PARTITION_CONFIG, part_config);
>  		if (ret)
>  			return ret;
>  
> @@ -1563,7 +1563,7 @@ static int mci_set_boot(struct param_d *param, void *priv)
>  	mci->ext_csd_part_config |= mci->bootpart << 3;
>  
>  	return mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
> -			EXT_CSD_PART_CONFIG, mci->ext_csd_part_config);
> +			EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
>  }
>  
>  static const char *mci_boot_names[] = {
> diff --git a/include/mci.h b/include/mci.h
> index 781e6e0f36..eb942e62b8 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -144,53 +144,6 @@
>   * EXT_CSD fields
>   */
>  
> -#define EXT_CSD_FLUSH_CACHE		32      /* W */
> -#define EXT_CSD_CACHE_CTRL		33      /* R/W */
> -#define EXT_CSD_POWER_OFF_NOTIFICATION	34	/* R/W */
> -#define EXT_CSD_GP_SIZE_MULT		143	/* R/W */
> -#define EXT_CSD_PARTITION_ATTRIBUTE	156	/* R/W */
> -#define EXT_CSD_PARTITION_SUPPORT	160	/* RO */
> -#define EXT_CSD_HPI_MGMT		161	/* R/W */
> -#define EXT_CSD_RST_N_FUNCTION		162	/* R/W */
> -#define EXT_CSD_SANITIZE_START		165     /* W */
> -#define EXT_CSD_WR_REL_PARAM		166	/* RO */
> -#define EXT_CSD_BOOT_WP			173	/* R/W */
> -#define EXT_CSD_ERASE_GROUP_DEF		175	/* R/W */
> -#define EXT_CSD_PART_CONFIG		179	/* R/W */
> -#define EXT_CSD_ERASED_MEM_CONT		181	/* RO */
> -#define EXT_CSD_BUS_WIDTH		183	/* R/W */
> -#define EXT_CSD_HS_TIMING		185	/* R/W */
> -#define EXT_CSD_POWER_CLASS		187	/* R/W */
> -#define EXT_CSD_REV			192	/* RO */
> -#define EXT_CSD_STRUCTURE		194	/* RO */
> -#define EXT_CSD_CARD_TYPE		196	/* RO */
> -#define EXT_CSD_OUT_OF_INTERRUPT_TIME	198	/* RO */
> -#define EXT_CSD_PART_SWITCH_TIME        199     /* RO */
> -#define EXT_CSD_PWR_CL_52_195		200	/* RO */
> -#define EXT_CSD_PWR_CL_26_195		201	/* RO */
> -#define EXT_CSD_PWR_CL_52_360		202	/* RO */
> -#define EXT_CSD_PWR_CL_26_360		203	/* RO */
> -#define EXT_CSD_SEC_CNT			212	/* RO, 4 bytes */
> -#define EXT_CSD_S_A_TIMEOUT		217	/* RO */
> -#define EXT_CSD_REL_WR_SEC_C		222	/* RO */
> -#define EXT_CSD_HC_WP_GRP_SIZE		221	/* RO */
> -#define EXT_CSD_ERASE_TIMEOUT_MULT	223	/* RO */
> -#define EXT_CSD_HC_ERASE_GRP_SIZE	224	/* RO */
> -#define EXT_CSD_BOOT_MULT		226	/* RO */
> -#define EXT_CSD_SEC_TRIM_MULT		229	/* RO */
> -#define EXT_CSD_SEC_ERASE_MULT		230	/* RO */
> -#define EXT_CSD_SEC_FEATURE_SUPPORT	231	/* RO */
> -#define EXT_CSD_TRIM_MULT		232	/* RO */
> -#define EXT_CSD_PWR_CL_200_195		236	/* RO */
> -#define EXT_CSD_PWR_CL_200_360		237	/* RO */
> -#define EXT_CSD_PWR_CL_DDR_52_195	238	/* RO */
> -#define EXT_CSD_PWR_CL_DDR_52_360	239	/* RO */
> -#define EXT_CSD_POWER_OFF_LONG_TIME	247	/* RO */
> -#define EXT_CSD_GENERIC_CMD6_TIME	248	/* RO */
> -#define EXT_CSD_CACHE_SIZE		249	/* RO, 4 bytes */
> -#define EXT_CSD_HPI_FEATURES		503	/* RO */
> -
> -/* Added with the 5.1 standard */
>  #define EXT_CSD_CMDQ_MODE_EN			15	/* RO */
>  #define EXT_CSD_SECURE_REMOVAL_TYPE		16	/* R/W */
>  #define EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT	17	/* R/W */
> @@ -200,6 +153,9 @@
>  #define EXT_CSD_MODE_OPERATION_CODES		29	/* W */
>  #define EXT_CSD_MODE_CONFIG			30	/* R/W */
>  #define EXT_CSD_BARRIER_CTRL			31	/* R/W */
> +#define EXT_CSD_FLUSH_CACHE			32      /* W */
> +#define EXT_CSD_CACHE_CTRL			33      /* R/W */
> +#define EXT_CSD_POWER_OFF_NOTIFICATION		34	/* R/W */
>  #define EXT_CSD_PACKED_FAILURE_INDEX		35	/* RO */
>  #define EXT_CSD_PACKED_COMMAND_STATUS		36	/* RO */
>  #define EXT_CSD_CONTEXT_CONF			37	/* R/W, 15 bytes */
> @@ -218,28 +174,44 @@
>  #define EXT_CSD_SEC_BAD_BLK_MGMNT		134	/* R/W */
>  #define EXT_CSD_ENH_START_ADDR			136	/* R/W, 4 bytes */
>  #define EXT_CSD_ENH_SIZE_MULT			140	/* R/W, 3 bytes */
> +#define EXT_CSD_GP_SIZE_MULT			143	/* R/W */
>  #define EXT_CSD_PARTITION_SETTING_COMPLETED	155	/* R/W */
>  #define EXT_CSD_PARTITIONS_ATTRIBUTE		156	/* R/W */
>  #define EXT_CSD_MAX_ENH_SIZE_MULT		157	/* RO, 3 bytes */
>  #define EXT_CSD_PARTITIONING_SUPPORT		160	/* RO */
> +#define EXT_CSD_HPI_MGMT			161	/* R/W */
> +#define EXT_CSD_RST_N_FUNCTION			162	/* R/W */
>  #define EXT_CSD_BKOPS_EN			163	/* R/W */
>  #define EXT_CSD_BKOPS_START			164	/* WO */
> +#define EXT_CSD_SANITIZE_START			165     /* W */
> +#define EXT_CSD_WR_REL_PARAM			166	/* RO */
>  #define EXT_CSD_WR_REL_SET			167	/* R/W */
>  #define EXT_CSD_RPMB_SIZE_MULT			168	/* RO */
>  #define EXT_CSD_FW_CONFIG			169	/* R/W */
>  #define EXT_CSD_USER_WP				171	/* R/W */
> +#define EXT_CSD_BOOT_WP				173	/* R/W */
>  #define EXT_CSD_BOOT_WP_STATUS			174	/* RO */
> +#define EXT_CSD_ERASE_GROUP_DEF			175	/* R/W */
>  #define EXT_CSD_BOOT_BUS_CONDITIONS		177	/* R/W */
>  #define EXT_CSD_BOOT_CONFIG_PROT		178	/* R/W */
>  #define EXT_CSD_PARTITION_CONFIG		179	/* R/W */
> +#define EXT_CSD_ERASED_MEM_CONT			181	/* RO */
> +#define EXT_CSD_BUS_WIDTH			183	/* R/W */
>  #define EXT_CSD_STROBE_SUPPORT			184	/* RO */
> +#define EXT_CSD_HS_TIMING			185	/* R/W */
> +#define EXT_CSD_POWER_CLASS			187	/* R/W */
>  #define EXT_CSD_CMD_SET_REV			189	/* R/W */
>  #define EXT_CSD_CMD_SET				191	/* R/W */
> +#define EXT_CSD_REV				192	/* RO */
>  #define EXT_CSD_CSD_STRUCTURE			194	/* RO */
>  #define EXT_CSD_DEVICE_TYPE			196	/* RO */
>  #define EXT_CSD_DRIVER_STRENGTH			197	/* RO */
> -#define EXT_CSD_PART_SWITCH_TIME		199	/* RO */
> +#define EXT_CSD_OUT_OF_INTERRUPT_TIME		198	/* RO */
>  #define EXT_CSD_PARTITION_SWITCH_TIME		199	/* RO */
> +#define EXT_CSD_PWR_CL_52_195			200	/* RO */
> +#define EXT_CSD_PWR_CL_26_195			201	/* RO */
> +#define EXT_CSD_PWR_CL_52_360			202	/* RO */
> +#define EXT_CSD_PWR_CL_26_360			203	/* RO */
>  #define EXT_CSD_MIN_PERF_R_4_26			205	/* RO */
>  #define EXT_CSD_MIN_PERF_W_4_26			206	/* RO */
>  #define EXT_CSD_MIN_PERF_R_8_26_4_52		207	/* RO */
> @@ -249,18 +221,34 @@
>  #define EXT_CSD_SECURE_WP_INFO			211	/* RO */
>  #define EXT_CSD_SEC_COUNT			212	/* RO, 4 bytes */
>  #define EXT_CSD_SLEEP_NOTIFICATION_TIME		216	/* RO */
> +#define EXT_CSD_S_A_TIMEOUT			217	/* RO */
>  #define EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT	218	/* RO */
>  #define EXT_CSD_S_C_VCCQ			219	/* RO */
>  #define EXT_CSD_S_C_VCC				220	/* RO */
> +#define EXT_CSD_HC_WP_GRP_SIZE			221	/* RO */
> +#define EXT_CSD_REL_WR_SEC_C			222	/* RO */
> +#define EXT_CSD_ERASE_TIMEOUT_MULT		223	/* RO */
> +#define EXT_CSD_HC_ERASE_GRP_SIZE		224	/* RO */
>  #define EXT_CSD_ACC_SIZE			225	/* RO */
>  #define EXT_CSD_BOOT_SIZE_MULT			226	/* RO */
>  #define EXT_CSD_BOOT_INFO			228	/* RO */
> +#define EXT_CSD_SEC_TRIM_MULT			229	/* RO */
> +#define EXT_CSD_SEC_ERASE_MULT			230	/* RO */
> +#define EXT_CSD_SEC_FEATURE_SUPPORT		231	/* RO */
> +#define EXT_CSD_TRIM_MULT			232	/* RO */
>  #define EXT_CSD_MIN_PERF_DDR_R_8_52		234	/* RO */
>  #define EXT_CSD_MIN_PERF_DDR_W_8_52		235	/* RO */
> +#define EXT_CSD_PWR_CL_200_195			236	/* RO */
> +#define EXT_CSD_PWR_CL_200_360			237	/* RO */
> +#define EXT_CSD_PWR_CL_DDR_52_195		238	/* RO */
> +#define EXT_CSD_PWR_CL_DDR_52_360		239	/* RO */
>  #define EXT_CSD_CACHE_FLUSH_POLICY		240	/* RO */
>  #define EXT_CSD_INI_TIMEOUT_AP			241	/* RO */
>  #define EXT_CSD_CORRECTLY_PRG_SECTORS_NUM	242	/* RO, 4 bytes */
>  #define EXT_CSD_BKOPS_STATUS			246	/* RO */
> +#define EXT_CSD_POWER_OFF_LONG_TIME		247	/* RO */
> +#define EXT_CSD_GENERIC_CMD6_TIME		248	/* RO */
> +#define EXT_CSD_CACHE_SIZE			249	/* RO, 4 bytes */
>  #define EXT_CSD_FIRMWARE_VERSION		254	/* RO, 8 bytes */
>  #define EXT_CSD_DEVICE_VERSION			262	/* RO, 2 bytes */
>  #define EXT_CSD_OPTIMAL_TRIM_UNIT_SIZE		264	/* RO */
> @@ -286,6 +274,7 @@
>  #define EXT_CSD_MAX_PACKED_WRITES		500	/* RO */
>  #define EXT_CSD_MAX_PACKED_READS		501	/* RO */
>  #define EXT_CSD_BKOPS_SUPPORT			502	/* RO */
> +#define EXT_CSD_HPI_FEATURES			503	/* RO */
>  #define EXT_CSD_S_CMD_SET			504	/* RO */
>  #define EXT_CSD_EXT_SECURITY_ERR		505	/* RO */
>  



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
