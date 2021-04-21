Delivery-date: Wed, 21 Apr 2021 10:49:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZ8Xv-0001nb-Lf
	for lore@lore.pengutronix.de; Wed, 21 Apr 2021 10:49:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZ8Xu-0003VX-JJ
	for lore@pengutronix.de; Wed, 21 Apr 2021 10:49:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6zfpgyjSKRR5UsAq4Hlu3BTBPGZfqlHGE/p6w5SsOOw=; b=QXTykPk4tu+WO1UJ+1QSCCjSz
	drYmeU5Sfb6mTPQshoThBN33nSlJNiPrrTnMe45jFQ1ZLco8wYO+LvrpWfgeJXI7/nSNodEoB2I8o
	Bm1h4BsHdcqOyrTsLqPbU//8+Fo0i7HCNlV4az/SRfSvgBfG197BRmydkv96VWjcL6jSOZ8oO42OT
	g6KGqVxnrdKgN3RZ9irFUIdTEbgG8nE0vg6SnjRky7JJvO/Z00dCFMuPId2/Q3sAEAP/ibfbOu8fu
	rMvNXmgZo7XUGVH47fNplvAMPfc8K6BIVy5JTy7F/idFUazBQr1jTSG7FSuL7uvKiuz4bPv0IiPT1
	bMGj5YNSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ8WW-00E0Qp-MU; Wed, 21 Apr 2021 08:47:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8WN-00E0QJ-Va
 for barebox@desiato.infradead.org; Wed, 21 Apr 2021 08:47:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:In-Reply-To
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=gmD7nxX7Ecy+A0vPjZXUz58lWXRFW9z/jrfXdeRpJs8=; b=thdJquF2js/e3bmzrpijhRyOHj
 A+H7CKim4QSOrTTdijzH83t/MST5yxBxkcgZI+Y88loWJX4iio701y4fSlTq1d3+u6bSTbzpIwlDK
 dwmrMzXuugShdGygAIAZ9SqxIeSeFPb6gAT7RbA5XF6GOsqg5GUE2IbsRP6wSCab9wYbbgf3tXDjn
 a2kMYOvWGt250AYNG6n1n4xSsJnQ9rjprEptFjhe1aib85r8Lg1uaqXzUt/QIgxHYkOWRU5t02zQZ
 KLAltIgemf5JZT+qbHd9aZZ/Tw0bXfhfsc/J+cCji/IueVOW9/+5RBpZJRWkA3WDBVYXy3pjrK2BL
 iQh7aNjQ==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8WI-00CikS-SG
 for barebox@lists.infradead.org; Wed, 21 Apr 2021 08:47:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id C983F1AB0DA
 for <barebox@lists.infradead.org>; Wed, 21 Apr 2021 08:47:31 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KNR7QELC;
 Wed, 21 Apr 2021 08:47:31 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id 9BD8F1AB0D5;
 Wed, 21 Apr 2021 08:47:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A08A627E0879;
 Wed, 21 Apr 2021 10:47:31 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 5ntFCp5Ocazy; Wed, 21 Apr 2021 10:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3894E27E087A;
 Wed, 21 Apr 2021 10:47:31 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 3894E27E087A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1618994851;
 bh=gmD7nxX7Ecy+A0vPjZXUz58lWXRFW9z/jrfXdeRpJs8=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=kCnnHnLYv0mTo7puWokt8WljZzf5jRx3GsfUs1AoJx1ynHrIrWLUShbGdnXpkPBsV
 AWcEdvm614/DJGYY5sPohJlD37/fClOPdZYKubX7mW81zH+Z+w58C3mSmRMhfvQ3hm
 pkt0pCCUiEc4v14sLuVzrYp1IP71WCSNRyy5qo44=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 4IfbfDvIhBvz; Wed, 21 Apr 2021 10:47:31 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 2582A27E0879;
 Wed, 21 Apr 2021 10:47:31 +0200 (CEST)
Date: Wed, 21 Apr 2021 10:47:29 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210421084729.GD21066@tellis.lin.mbt.kalray.eu>
References: <20210421072704.520-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210421072704.520-1-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_014739_106429_FDC7C1D4 
X-CRM114-Status: GOOD (  21.19  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] usb: dwc2: increase timeout for waiting on host
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Wed, Apr 21, 2021 at 09:27:04AM +0200, Ahmad Fatoum wrote:
> Commit 26459ab7803a ("usb: dwc2: Rework wait for host mode during
> core reset") effectively reduced the timeout on switch to host mode
> from 200ms to 110 us, which is insufficient for the IP on the Raspberry
> Pi 3b, leading to:
> =

>   dwc2 3f980000.usb@7e980000.of: dwc2_wait_for_mode: Couldn't set host mo=
de
> =

> and an unusable USB (and Ethernet) after.
> =

> Bump up the timeout to 200ms and help future debugging by logging how
> much time it actually took. For the Raspberry 3b I got a value of 49ms.
Indeed, I've changed the timeout in Commit 26459ab7803a, I've tried to
follow what's done in Linux in drivers/usb/dwc2/core.c, see
https://elixir.bootlin.com/linux/latest/source/drivers/usb/dwc2/core.c#L385

Turns out I've made a mistake, Linux is using 110 ms and not =B5s.
So maybe we can use 110 * MSECOND ? it will still be greater than what's
required for the Raspberry 3b.  In the other hand the wait will stop as
soon as the mode is set. it will only make the worst case faster...
which is not a big deal.
> =

> Note that this is also called from dwc2_force_mode, so worst case is
> that a stuck IP delays barebox startup by 200ms.
> An error message would alert to this fact, so it can be corrected.
Ok, this can be useful.

> Fixes: 26459ab7803a ("usb: dwc2: Rework wait for host mode during core re=
set")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/dwc2/core.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index 5d04a07b0393..7813344ffa65 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -688,19 +688,23 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
>   */
>  void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
>  {
> -	unsigned int timeout =3D 110 * USECOND;
> -	int ret;
> +	unsigned int timeout =3D 200 * MSECOND;
> +	uint64_t start;
>  =

>  	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
>  		 host_mode ? "host" : "device");
>  =

> -	ret =3D wait_on_timeout(timeout, dwc2_is_host_mode(dwc2) =3D=3D host_mo=
de);
> -	if (ret)
> -		dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
> -				 __func__, host_mode ? "host" : "device");
> +	start =3D get_time_ns();
> +	while (dwc2_is_host_mode(dwc2) !=3D host_mode) {
> +		if (is_timeout(start, timeout)) {
> +			dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
> +				__func__, host_mode ? "host" : "device");
> +			return;
> +		}
> +	}
>  =

> -	dev_vdbg(dwc2->dev, "%s mode set\n",
> -		 host_mode ? "Host" : "Device");
> +	dev_vdbg(dwc2->dev, "%s mode set after %lluns\n",
> +		 host_mode ? "Host" : "Device", get_time_ns() - start);
>  }
>  =

>  /**
> -- =

> 2.29.2
> =

> =



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

