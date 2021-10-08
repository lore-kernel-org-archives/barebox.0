Delivery-date: Fri, 08 Oct 2021 15:21:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYpoK-0000gr-AK
	for lore@lore.pengutronix.de; Fri, 08 Oct 2021 15:21:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYpoJ-0003yN-Bz
	for lore@pengutronix.de; Fri, 08 Oct 2021 15:21:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1mTMYHEymSWdjMUYKJ6DpjxwjZhomJpKGNT8Xck8Tzo=; b=bo4O2BIy6fLXKo
	m4uybukzOF1FCsgyz3Y/Sk25jgvy95CFrsVxDLp4TfTby1L1EHPMq1G/I/+f5IoOkTLDeSwrKS9Qs
	yDPCrTs9fNlFgahCUFKCO8uzckzM3k2WtUrwnu/ncqcTa/LebV8mObxCEJKj/6Ux3LEjS4EN4QGeg
	wTZx7Zn5uX+O71hrsDD9rnol/4hxYldjis8SlJHKMUq7ZVPjX2ine7EE7d8lEogtQsIcYxDkYTvmc
	mU90nHjwjAAnODGQqX2gma0KdHtw65W+5iJDJk8GXs0AkwOaMaxPIYpADTpkCD4nln55EG3onnU08
	tEJ19F5/o7iDbpiGSyjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYpmj-002sFz-6o; Fri, 08 Oct 2021 13:19:37 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYpmd-002sEz-21
 for barebox@lists.infradead.org; Fri, 08 Oct 2021 13:19:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id D9D584020F
 for <barebox@lists.infradead.org>; Fri,  8 Oct 2021 15:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1633699136;
 bh=/lzpnZ5TuSy79zcHuCK0krPt+Onac5wLTSEMJjbFHWg=;
 h=Date:From:To:Subject:From;
 b=CaBuqnlSzP3iXpwuYoRzf4LvcIGc3fgPtU74I6A6ijkRrxzKIUNQeTauclLp9wJ02
 /QENoVHZG+otdi1aNJGjbX/OG8fYTReNWrpheXUZGCHeiT9Efr1VBYigdeUGVxG3Pd
 f7fXhdZUzgPuVnPUxvw1S3kxwThlMfXT6rQHq3KV3rRYxWre4vR7vGMxCCSHzaOrbH
 q7QAsfd8E1cev2u6BGmHZcbqnHKv1vOGqmR49MOPZCszclA/wHEmkL/jC+sLJJtSlO
 YSUQywH0HUcrN7PZqHYm3nDzze3qL2+mr474MEI3GqMeUTjaUYWl5nuOd7t6El6kjd
 rMAL9s8r/CZhA==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSmgY19XSIBB for <barebox@lists.infradead.org>;
 Fri,  8 Oct 2021 15:18:56 +0200 (CEST)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 70A374004B
 for <barebox@lists.infradead.org>; Fri,  8 Oct 2021 15:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1633699136;
 bh=/lzpnZ5TuSy79zcHuCK0krPt+Onac5wLTSEMJjbFHWg=;
 h=Date:From:To:Subject:From;
 b=CaBuqnlSzP3iXpwuYoRzf4LvcIGc3fgPtU74I6A6ijkRrxzKIUNQeTauclLp9wJ02
 /QENoVHZG+otdi1aNJGjbX/OG8fYTReNWrpheXUZGCHeiT9Efr1VBYigdeUGVxG3Pd
 f7fXhdZUzgPuVnPUxvw1S3kxwThlMfXT6rQHq3KV3rRYxWre4vR7vGMxCCSHzaOrbH
 q7QAsfd8E1cev2u6BGmHZcbqnHKv1vOGqmR49MOPZCszclA/wHEmkL/jC+sLJJtSlO
 YSUQywH0HUcrN7PZqHYm3nDzze3qL2+mr474MEI3GqMeUTjaUYWl5nuOd7t6El6kjd
 rMAL9s8r/CZhA==
MIME-Version: 1.0
Date: Fri, 08 Oct 2021 15:18:56 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Organization: Inside M2M GmbH
Message-ID: <12cdc549cacb6f4f93f939fb76486d62@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_061931_475271_D2EF7739 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: yocto integration - best practice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I wonder how to properly integrate bare box into my yocto. I read many 
other examples in
the internet how other people do this and I am a little stupid now.

I have a yocto poky image up and running based on their beaglebone-yocto 
subset which can be utlilized
in my case with a rather minimal setup with a local.conf only. This 
since I by accident actually
use a Beaglebone Black board.

I added my own meta-insidem2m layer also and in this layer I modify 
kernel config, integrate out of
kernel modules and other stuff. Also barebox patches (for default boot 
configs) are added from there.
The local.conf shrunk to a rather minimal content, because I have an own 
distro in it with three
different images.

Additionally I integrated meta-barebox successfully into this and use 
barebox in my daily development
work to boot from internal MMC and external SD-Card.

What I wonder, what is need to be done to integrate MLO and barebox.bin 
into the SD-Card image? It is
not really importand, since copying the files by hand into the boot 
partition works fine and the final
install goes into the internal MMC flash anyway. But it would be fine to 
get barebox initially into
the image to generate immediately bootable images for SD-Card. It would 
be possible to raw write such
an image to the internal MMC 1:1 also...

But where is the hook to exchange u-boot by barebox in the yocto 
framework? Can it be done in an own
distro? I find bootloader stuff dealt with in /conf/machine/*, is it 
necessary to be done there?
This would be challenging a bit since then a kernel and other system 
stuff has to be recreated too
(tried that) and relying/utilizing the beaglebone stuff is not possible 
anymore. Additionally I see
many companies heavily providing software support for their boards with 
yocto and barebox without
/conf/machine/* stuff (if I read right).

Other way round: I plan to fully integrate RAUC into our software, what 
is best preparation for this
regarding barebox integration?

Kind Regards
Konstantin Kletschke

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

