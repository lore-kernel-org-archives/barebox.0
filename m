Delivery-date: Wed, 21 Apr 2021 11:14:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZ8wP-0001pM-MO
	for lore@lore.pengutronix.de; Wed, 21 Apr 2021 11:14:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZ8wO-0006zp-Em
	for lore@pengutronix.de; Wed, 21 Apr 2021 11:14:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4cM0KzWP4okNtvrEHsOQB/H4Ko7zOp8KLMa9x3gjTwk=; b=jdAbhAnlJBCSZ6X6dwPH2e2sm
	+r7S3FYL3/9N7ZEuhaeMZzKvLEN8STMicGSE69MgdPUi5wUTXauvNqxAHllkMm9Lo8LdiYugC5Vkc
	EaOIwiZNDl1LBgCqChZ+HXxLr+oqcIAbhTZLVnxlipA5VMlAeibvo5+GGzOGr7NxyMJth61VdDn7f
	OHzolipjemA/aSraRmU2k4AOeF+eO6W3Ion7RZrwhVZw4bSwYMIrXS1tN33RjNI1tZrQN+N9OcWL0
	8FxFOLK2z7aY3OIt6tcCX5bMY+nWoPIbGyTi8h808fBwbvtPkzcVKE9yOR5P0/LD8z/abRPtdJQxd
	eFFfczP2w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ8vB-00E5dN-IU; Wed, 21 Apr 2021 09:13:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8tu-00E55i-Lc
 for barebox@desiato.infradead.org; Wed, 21 Apr 2021 09:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:In-Reply-To
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=vigmIPfaaOpOg3ihClrU9fQkcTN1qSo92Wv+Z0bo/QQ=; b=aWDi8MT17zznPJ05NvwPI022Oh
 nRYu6JaiedZzaODkCaTmHagU8iMcz4Ew11z7N4XDovcLJCL9Kf/ylFEqJIaJ9ck+Ukkiln4ob5Ag3
 QwqmmpdPXQygNFZ18UQxyvpbzMlFg5PA3+eVRJgmiHa5zm1ssc/foAPA2CiIfzlvW52LvN1GWHJKX
 IdUwoxTEYHxIvicRPHJMZHXSsQMJ2ryNignba1+zccfvGIJBBYj/GxnzLyN9OpvClpgMVjIsg9Z8Y
 tgNbiQJN8MeSo5j1rfG4IXo2PRXFfwoOJboeymEiuIEX5DrXE6H6lYPiIJAFBcgMR+AKPXvytmfnP
 EwAULOLA==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8tp-00Ck56-Jr
 for barebox@lists.infradead.org; Wed, 21 Apr 2021 09:12:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id CF53D1AB117
 for <barebox@lists.infradead.org>; Wed, 21 Apr 2021 09:11:55 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KNR8LS90;
 Wed, 21 Apr 2021 09:11:55 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id A6CA31AB114;
 Wed, 21 Apr 2021 09:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id ADC6227E0879;
 Wed, 21 Apr 2021 11:11:55 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id qhxgJy2aP4H0; Wed, 21 Apr 2021 11:11:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 30A8427E0891;
 Wed, 21 Apr 2021 11:11:55 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 30A8427E0891
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1618996315;
 bh=vigmIPfaaOpOg3ihClrU9fQkcTN1qSo92Wv+Z0bo/QQ=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=pyKdlXMWyG48lA+1lVBk7FuR1q5Wovoy3gfXdbiKMc21/ESJo3w7IiVXeMrPUe/zE
 OIolJt9Ickh1X6nI15Jv7hm3yVr//XVCNVI1gb2iqQsaSTrhxST1kguo3l4uazq9GC
 J2RGvVy5ZFJs2aMTcTsXevxwdnhnsJwugYPbZmm4=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dyzxDeusqn4q; Wed, 21 Apr 2021 11:11:55 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 1CD4727E0879;
 Wed, 21 Apr 2021 11:11:55 +0200 (CEST)
Date: Wed, 21 Apr 2021 11:11:53 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210421091153.GE21066@tellis.lin.mbt.kalray.eu>
References: <20210421072704.520-1-a.fatoum@pengutronix.de>
 <20210421084729.GD21066@tellis.lin.mbt.kalray.eu>
 <27969059-7cfb-cb4a-cd49-52c03c156799@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27969059-7cfb-cb4a-cd49-52c03c156799@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_021157_826536_2A0F02BB 
X-CRM114-Status: GOOD (  33.52  )
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

On Wed, Apr 21, 2021 at 10:50:52AM +0200, Ahmad Fatoum wrote:
> Hello Jules,
> =

> On 21.04.21 10:47, Jules Maselbas wrote:
> > Hi Ahmad,
> > =

> > On Wed, Apr 21, 2021 at 09:27:04AM +0200, Ahmad Fatoum wrote:
> >> Commit 26459ab7803a ("usb: dwc2: Rework wait for host mode during
> >> core reset") effectively reduced the timeout on switch to host mode
> >> from 200ms to 110 us, which is insufficient for the IP on the Raspberry
> >> Pi 3b, leading to:
> >>
> >>   dwc2 3f980000.usb@7e980000.of: dwc2_wait_for_mode: Couldn't set host=
 mode
> >>
> >> and an unusable USB (and Ethernet) after.
> >>
> >> Bump up the timeout to 200ms and help future debugging by logging how
> >> much time it actually took. For the Raspberry 3b I got a value of 49ms.
> > Indeed, I've changed the timeout in Commit 26459ab7803a, I've tried to
> > follow what's done in Linux in drivers/usb/dwc2/core.c, see
> > https://elixir.bootlin.com/linux/latest/source/drivers/usb/dwc2/core.c#=
L385
> > =

> > Turns out I've made a mistake, Linux is using 110 ms and not =B5s.
> > So maybe we can use 110 * MSECOND ? it will still be greater than what's
> > required for the Raspberry 3b.  In the other hand the wait will stop as
> > soon as the mode is set. it will only make the worst case faster...
> > which is not a big deal.
> =

> I am fine with aligning ourselves with what Linux is doing.
> Can you post that as a separate patch? That way this here can go into
> v2021.05.0 to fix the immediate breakage and yours can go into v2020.06.0,
> which will hopefully afford users some more time to test.
Yes, sure I'll send a patch for this, and maybe with some more for dwc2. =


> =

> Cheers,
> Ahmad
> =

> >>
> >> Note that this is also called from dwc2_force_mode, so worst case is
> >> that a stuck IP delays barebox startup by 200ms.
> >> An error message would alert to this fact, so it can be corrected.
> > Ok, this can be useful.
> > =

> >> Fixes: 26459ab7803a ("usb: dwc2: Rework wait for host mode during core=
 reset")
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  drivers/usb/dwc2/core.c | 20 ++++++++++++--------
> >>  1 file changed, 12 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> >> index 5d04a07b0393..7813344ffa65 100644
> >> --- a/drivers/usb/dwc2/core.c
> >> +++ b/drivers/usb/dwc2/core.c
> >> @@ -688,19 +688,23 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
> >>   */
> >>  void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
> >>  {
> >> -	unsigned int timeout =3D 110 * USECOND;
> >> -	int ret;
> >> +	unsigned int timeout =3D 200 * MSECOND;
> >> +	uint64_t start;
> >>  =

> >>  	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
> >>  		 host_mode ? "host" : "device");
> >>  =

> >> -	ret =3D wait_on_timeout(timeout, dwc2_is_host_mode(dwc2) =3D=3D host=
_mode);
> >> -	if (ret)
> >> -		dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
> >> -				 __func__, host_mode ? "host" : "device");
> >> +	start =3D get_time_ns();
> >> +	while (dwc2_is_host_mode(dwc2) !=3D host_mode) {
> >> +		if (is_timeout(start, timeout)) {
> >> +			dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
> >> +				__func__, host_mode ? "host" : "device");
> >> +			return;
> >> +		}
> >> +	}
> >>  =

> >> -	dev_vdbg(dwc2->dev, "%s mode set\n",
> >> -		 host_mode ? "Host" : "Device");
> >> +	dev_vdbg(dwc2->dev, "%s mode set after %lluns\n",
> >> +		 host_mode ? "Host" : "Device", get_time_ns() - start);
> >>  }
> >>  =

> >>  /**
> >> -- =

> >> 2.29.2
> >>
> >>
> > =

> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

