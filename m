Delivery-date: Tue, 06 Dec 2022 08:20:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2SFT-00CI9a-KU
	for lore@lore.pengutronix.de; Tue, 06 Dec 2022 08:20:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2SFS-000265-VR
	for lore@pengutronix.de; Tue, 06 Dec 2022 08:20:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=brFcYwECRFBpRtUIQz3zfqK8xKJuXt2k9wvSaq5Of+0=; b=4jeTq+C7XxskIelU7bTRsql15w
	3hPKOFjY00MHdlNZtiwKlQflmIGD9oSArUtOcZcXeGcSFAw49SQ9LKV5bQYQ9GahU81nS0RWVu4D5
	0YEvRtm317IOxR2Wi190dVjh6DtG6HQSHvDMN2RNeN3DQVKHEEO4C/UmdYXQ7L0iXjCjDXl++rpv1
	CMeYNG/UOXcCTFDxS1oHFcKXEBBBEMOMk7nbEt4Bv2hhEEkWg/9bUW0hWGt3Jvp9PO2PlmA4ZVyUo
	G5IcE+cn2g+yj8qyM5S884kDvsZTuThHuyiqMbn7zsq0SSfi7oTTts3aI7AcEHb4lFE3Fo8eaihI/
	Vh6HOQxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2SDs-003Tkb-0O; Tue, 06 Dec 2022 07:18:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2SDn-003TY3-0U
	for barebox@lists.infradead.org; Tue, 06 Dec 2022 07:18:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2SDf-0001nj-OH; Tue, 06 Dec 2022 08:18:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2SDf-00050b-92; Tue, 06 Dec 2022 08:18:23 +0100
Date: Tue, 6 Dec 2022 08:18:23 +0100
To: Gerz Burak LCPF-CH <Burak.Gerz@mt.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20221206071823.GT29728@pengutronix.de>
References: <DB3PR0302MB8966A4A44D35F989B46B88B0E7189@DB3PR0302MB8966.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DB3PR0302MB8966A4A44D35F989B46B88B0E7189@DB3PR0302MB8966.eurprd03.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_231831_086304_15FB0488 
X-CRM114-Status: GOOD (  23.18  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox hooks in userspace
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 05, 2022 at 04:34:55PM +0000, Gerz Burak LCPF-CH wrote:
> Hi
> 
> I'm thinking of integrating something like a very simple "hook executer" in barebox - so that it can execute scripts which live in the rootfs.
> This would facilitate updating the barebox hooks by a simple RAUC rootfs update.
> Since I have an A/B setup, I do not know which partition will be booted by barebox beforehand - so currently I just execute all scripts twice
> 
> e.g, I have:
> 
> /defaultenv/defaultenv-2-base/init/zzbarebox-hook-exec
> @@ -0,0 +1,18 @@
> #!/bin/sh
> 
> #Execute all scripts found
> #TODO: Get next boot target from bootchooser and execute scripts located
> #      only on one target
> 
> SYSTEM0=${bootsource}${bootsource_instance}.0
> SYSTEM1=${bootsource}${bootsource_instance}.1
> 
> HOOKS_DIR=boot/barebox-hooks/
> 
> for i in /mnt/$SYSTEM0/$HOOKS_DIR/*; do
>         . $i
> done
> 
> for i in /mnt/$SYSTEM1/$HOOKS_DIR/*; do
>         . $i
> done
> 
> I see that bootchooser -i prints the next to be booted system:
> barebox@Juno phyCORE-i.MX6 ULL eMMC SOM:/ bootchooser -i
> Good targets (first will be booted next):
> system0
> ...
> 
> 
> My Question:
> Would it make sense to extend the bootchooser command, e.g. with
> bootchooser -n (get and store next boot target in a global variable),
> so that it can be used by the hush shell?

When do you want to execute the scripts? When you want to execute them
during booting then I think we'll find a better way for this. When you
want to execute them at barebox init time then the way you describe
sounds good to me.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


