Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6G0Q-0000lV-MT
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 07:46:51 +0000
Date: Fri, 15 Feb 2013 08:46:27 +0100
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20130215074627.GB18670@sig21.net>
References: <20130214224222.GX19322@game.jcrosoft.org>
 <1360881873-1599-1-git-send-email-plagnioj@jcrosoft.com>
 <1360881873-1599-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360881873-1599-2-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/5] filetype: add GPT support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On Thu, Feb 14, 2013 at 11:44:30PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +#define MBR_OSTYPE_EFI_GPT	0xee
> +
> +static inline int pmbr_part_valid(const uint8_t *buf)
> +{
> +	if (buf[MBR_PART_sys_ind] == MBR_OSTYPE_EFI_GPT &&
> +		get_unaligned_le32(&buf[MBR_PART_start_sect]) == 1UL) {
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * is_pmbr_valid(): test Protective MBR for validity
> + * @mbr: pointer to a legacy mbr structure
> + *
> + * Description: Returns 1 if PMBR is valid, 0 otherwise.
> + * Validity depends on two things:
> + *  1) MSDOS signature is in the last two bytes of the MBR
> + *  2) One partition of type 0xEE is found
> + */
> +static int is_gpt_valid(const uint8_t *buf)
> +{
> +	int i;
> +
> +	if (get_unaligned_le16(&buf[BS_55AA]) != 0xAA55)
> +		return 0;
> +
> +	if (strncmp(&buf[512], "EFI PART", 8))
> +		return 0;
> +
> +	buf += MBR_Table;
> +
> +	for (i = 0; i < 4; i++, buf += MBR_partition_size) {
> +		if (pmbr_part_valid(buf))
> +			return 1;
> +	}
> +	return 0;
> +}


ACK, this is what I meant.

Thanks,
Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
