Delivery-date: Tue, 02 May 2023 10:38:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptlWk-0029QM-M7
	for lore@lore.pengutronix.de; Tue, 02 May 2023 10:38:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptlWi-000442-H3
	for lore@pengutronix.de; Tue, 02 May 2023 10:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HkzHQilZvHPEUWSEPDUF4LzyZjsr5i/L5wPwc6Rk8T4=; b=bMi14cl3kdDoLXD0IDqmMNslPI
	JxPlQY60aPR7L0XPepfFZ+qG5vzVS6DvZ7wGveSObtJypXNA1gAM2CydRJ+l7ByDigrroNydMDrZR
	UIUuVYNRpOO3hja8XbHlhxapGjBYf9nHZtFkI+20wXwrjUPsCHEhw3CAqgC+8aC8/iXpAnePjTvxu
	2Bg2zDKjLOv33Xa+A4qQhPafG1s6qHH6RPjCP7iaDxbIr4XI+SOoCEIe270AieXAbU5P084x8Ctxt
	AUa5D+ZTMNYKE0ChLrUEBKFm89cAY+2PTeIDt1+NDWAw4DwsTxT4+qH7wXiwVYgNhu5bGfdDEnG16
	eL0sIyOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlVc-000e43-2U;
	Tue, 02 May 2023 08:37:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlVZ-000e3D-04
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 08:37:14 +0000
Received: from ginster.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::45])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jbe@pengutronix.de>)
	id 1ptlVV-0003y2-Hw; Tue, 02 May 2023 10:37:09 +0200
Message-ID: <9230126707a1938c0dee22efa0b3fbaab0098c7e.camel@pengutronix.de>
From: Juergen Borleis <jbe@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>, Andreas Kemnade <andreas@kemnade.info>
Cc: barebox@lists.infradead.org
Date: Tue, 02 May 2023 10:37:08 +0200
In-Reply-To: <20230427073630.GT13543@pengutronix.de>
References: <20230426210936.7531e177@aktux>
	 <20230427073630.GT13543@pengutronix.de>
Organization: Pengutronix e.K.
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_013713_082199_0EB699A0 
X-CRM114-Status: GOOD (  19.42  )
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
Reply-To: jbe@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: rn5t618 vs. rn5t568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Am Donnerstag, dem 27.04.2023 um 09:36 +0200 schrieb Sascha Hauer:
> On Wed, Apr 26, 2023 at 09:09:36PM +0200, Andreas Kemnade wrote:
> > Hi,
> > 
> > just looked a bit around in the source and stumbled across drivers/mfd/rn5t568.c
> > 
> > It contains
> >  * MFD core driver for Ricoh RN5T618 PMIC
> > 
> > but the filename is rn5t568.c That is very confusing.
> >  a compatible ricoh,rn5t568 (but 567) does not exist in the kernel.

567 and 568 are pin compatible. As far as I know the 568 has some fixed OTP
settings which are used after reset. Depending on the type extension (C, S, AD…)
the I²C address differs and the default output voltages.

> > So which chip this is really about? Did not analyse things deeper yet.
> > 
> > I am also curious because I wrote most stuff in the kernel about the rn5t618/rc5t619.
> 
> Jürgen had to support the rn5t568 which is not yet supported in Linux.
> He took the Kernel rn5t618.c driver and adjusted it accordingly. Jürgen
> can't remember exactly, but he said the chips are quite similar.

Due to the support of the 567 variant it is already supported in the kernel.

jb

-- 
Pengutronix e.K.                       | Juergen Borleis             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |




