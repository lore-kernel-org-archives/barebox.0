Delivery-date: Thu, 06 May 2021 14:00:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lecfz-00022D-Qx
	for lore@lore.pengutronix.de; Thu, 06 May 2021 14:00:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lecfz-0002Eq-1u
	for lore@pengutronix.de; Thu, 06 May 2021 14:00:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mzge1luuJqgzaPsXYFRADEqIwcDOTCfu7jCsAqNntzk=; b=kU3nYXHiVgcriw3uliR4FJbhR
	c13V23R5EEMBl6NCUcbRON0I0JwSSx1czh5cFDMal3kJs/CIE+8/QbAc9Oxiac67gCt9keUdRz2iR
	d93FjxJx9jWika0peYKPlCrGQf2eKXGTU9Ak21JZN2fnkbGDlYdrtDOmeqYeEHzqKLVwbkahLxEYK
	E8jyix3cZv47hlsAST4PrmBMdz0dXDw6/ERhBL4zpgZDodiwTR0pR0+fMRd4xddoDq1uGs4+qiIum
	KBkrc6OmR8g+IP+nwgKnkbdxYhOhedHGEpa7yrmAG2kqTzcJstFXvLV4QBVazQAu7CwF4ewXKSaLI
	n7UNVGjzw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lecez-004Bzp-Vy; Thu, 06 May 2021 11:59:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecew-004Bzd-2G
 for barebox@desiato.infradead.org; Thu, 06 May 2021 11:59:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=5Fcj5W89EW2GM2prD6Jwt2MTtCsJZXzO7p6ADFBAmzY=; b=4j5GDVBYQpSbJ57zDBIfKY2Jtt
 MFA4xDu8asc1ECYojnlDKCEvYsimAWAuCHkVUUzogtVUhMQo8+uHPnlLfz6o1ip6Gvi0e31pN2F7f
 eTOCKgZOnHU8TZN6k+NUxbTJAnT93ebjJVaGatLvcyHyKIKR41wS2TkC83iv+PXoBISZZP09znNdX
 97Sd6VjYnASmaZ2QD3A8zfni9a9L5sYFH9XlPMLR9QJg8nTwebIzGaTW1H8QS3SFxo/MpLzTTPuBP
 kllgivZAXnCWPpoh4xzSlUgQ91nZIFX57ygXXBLHVEItTSvAMaYCxSD+c29C+UYKg6r0uuP+AveSs
 04sjH93w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leces-0060F0-So
 for barebox@lists.infradead.org; Thu, 06 May 2021 11:59:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lecep-0002Ac-EC; Thu, 06 May 2021 13:59:07 +0200
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c15d0311-c878-29be-2d64-e68ca7535131@pengutronix.de>
Date: Thu, 6 May 2021 13:59:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210506112219.27114-1-m.felsch@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_045910_959266_C053940B 
X-CRM114-Status: GOOD (  19.75  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] driver: add flag to check if cdev is an mci device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 06.05.21 13:22, Marco Felsch wrote:
> We need this during mount() to check if the cdev is an mmc/mci device.
> Later on we add the feature to pass "root=/dev/mmcblk*" as kernel
> command line.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/driver.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/include/driver.h b/include/driver.h
> index 0d43b36148..d381aaf78d 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -496,6 +496,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
>  #define DEVFS_PARTITION_READONLY	(1U << 1)
>  #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
>  #define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
> +#define DEVFS_IS_MCI_DEV		(1U << 5)
>  
>  struct cdev *devfs_add_partition(const char *devname, loff_t offset,
>  		loff_t size, unsigned int flags, const char *name);
> @@ -509,6 +510,11 @@ static inline void cdev_create_default_automount(struct cdev *cdev)
>  }
>  #endif
>  
> +static inline bool cdev_is_mci_dev(struct cdev *cdev)
> +{
> +	return !!(cdev->flags & DEVFS_IS_MCI_DEV);
> +}

Nitpick: cast to bool makes !! superfluous.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> +
>  #define DEVFS_PARTITION_APPEND		0
>  
>  /**
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

