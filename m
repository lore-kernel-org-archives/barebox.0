Delivery-date: Fri, 07 May 2021 10:08:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1levXS-00044X-Ia
	for lore@lore.pengutronix.de; Fri, 07 May 2021 10:08:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1levXR-0000B0-G6
	for lore@pengutronix.de; Fri, 07 May 2021 10:08:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ig0nKR/q8lUwInJXGWKD2xwN4ndYQC90hQl0DsXp4jc=; b=RciqsmkBDyDlVyBRV9HmGYCoo
	FDpiGxRE60KY57bdAV5L+G2e8dUS79J9+D3q23NcTcb5Y7ydbbOE/RD451BUCDwGxqXi5IR72Yy96
	JVK/YDL0s7I26lO025Qgr/NZnzBWXQnuv2AWAveSzgtHf2CZGPUJPIfGRl8BlR14jKtiU2JOeXELJ
	/e/Yceove2UWBy24s6Vep9Yl6zOTSyYKXOQKXIvB1Bf0D567B76vfVckqehziNPx87vQ668YS7qBu
	5mQu+lafFe/Gubx0PUI7IGqrFNmEAY/f5i4ubleOg8BSk97wfLSNF77tFo8DxSsl5d9UwGYV8igKV
	TpFPE7auw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1levWH-006TDS-RH; Fri, 07 May 2021 08:07:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1levWC-006TDJ-Uf
 for barebox@desiato.infradead.org; Fri, 07 May 2021 08:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=bawGm4wbKEdyz+++cBgERfp7ASp1ZSbHakwO1M1Kgkc=; b=O5fQOXPHDRnmEdEhbgRYjZLpaw
 JFIG+ZHzskd+/38b+l9fdvT9yoXetre3FNa+eBtNsVJliXknF7svOEAH29Pg9dfkgY2iyuqdArLY0
 8It5CPTk+qBRaTmX4PD4wW7bwBI70D3DaUKYnoND4AIzFAr+nhGs+mE+DhpgCa3Bs5/EIC2yJxKKU
 3sbrBUL2rC28N82AzARE9Qj4Rdd40YWghZ/AaAk1CNnIft/2CnBKeqeuuUwBDlmUrl1TvsJ2qPBFB
 Ci6APrc8Yfy3sSvy0E4IMy+xC8OkpO49/WUp+2RcoOfpGDsWsD0EeF6v0d4mfyiLGz3eMc0mc4buP
 8dXtlw7Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1levW9-006g3k-OZ
 for barebox@lists.infradead.org; Fri, 07 May 2021 08:07:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1levW8-0008Oo-0O; Fri, 07 May 2021 10:07:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1levW6-0002du-AC; Fri, 07 May 2021 10:07:22 +0200
Date: Fri, 7 May 2021 10:07:22 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
Message-ID: <20210507080722.GS19819@pengutronix.de>
References: <20210421072704.520-1-a.fatoum@pengutronix.de>
 <20210421084729.GD21066@tellis.lin.mbt.kalray.eu>
 <27969059-7cfb-cb4a-cd49-52c03c156799@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27969059-7cfb-cb4a-cd49-52c03c156799@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:05:06 up 78 days, 11:28, 98 users,  load average: 0.30, 0.33, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_010725_836317_9CE322C2 
X-CRM114-Status: GOOD (  37.83  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
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

Instead of applying two patches I suggest we go with the following
oneliner which is fine for master.

Sascha

------------------------------8<--------------------------------

>From 9fc2b0364c4b686d110b772be2245be3a513407d Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 7 May 2021 09:58:43 +0200
Subject: [PATCH] usb: dwc2: Fix wait for mode timeout

The timeout waiting for host mode should be 110ms instead of 110us.
The timeout is the same as in Linux now and the same it was before
fdd30cc251. It takes 49ms to go to host mode on the Raspberry Pi 3b,
so host mode stopped working with 26459ab780 which removed an additional
100ms delay before dwc2_wait_for_mode() was actually called.

Fixes: fdd30cc251 ("usb: dwc2: Rework dwc2_wait_for_mode to use wait_on_tim=
eout")
Fixes: 26459ab780 ("usb: dwc2: Rework wait for host mode during core reset")
Reported-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc2/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 5d04a07b03..8a78d8199e 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -688,7 +688,7 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
  */
 void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
 {
-	unsigned int timeout =3D 110 * USECOND;
+	unsigned int timeout =3D 110 * MSECOND;
 	int ret;
 =

 	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
-- =

2.29.2

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

