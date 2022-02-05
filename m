Delivery-date: Sat, 05 Feb 2022 16:00:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGMYE-006V6U-W4
	for lore@lore.pengutronix.de; Sat, 05 Feb 2022 16:00:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGMYD-0002rC-Ou
	for lore@pengutronix.de; Sat, 05 Feb 2022 16:00:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:Message-ID:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=08fBUjQjTelSCr0FlZ/I7kNDqswDpWi75/clBrcR4Oo=; b=JZ/
	Szc6AL2hBVshrQUJ0OhQnL2BK3lESWLLo7tuJzBwh/f2vfaYhg1SplegZLqgfNjNLcythLD4ksLq3
	k0SBzeKexW28fCGz2XJWh059EFStCAo7mtyOrGAXq7ELi8Wmr+rn/k7BeLpe1uusY3pwt0eO1/w3l
	LfhIKXd9vRxTjrtxpeR1L4nq3TkVA7N51Az3PLK1z7sqp6IMm3JGz+dxGwMXFD1RP+NVTCU3gHSJp
	bQ9uizwAMCYK3XU9pW5J7xuQBPfPD1TeQN5Wcc/wViTWjQ6rGoYIRrc8oM2QWVbw0pfn7APHnCfyH
	K6RvyqOx6dFdvH0hgHpD7g4YpO0C/yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGMWk-006hdY-J9; Sat, 05 Feb 2022 14:59:02 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGMWf-006hct-F1
 for barebox@lists.infradead.org; Sat, 05 Feb 2022 14:58:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644073134;
 bh=pGO3Z9fUhtMNaCNjYGOEqs6Q0hkjDjhFLhhtK+lDJ04=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=Z5ekSqaUFRk6JrFa7eAs9Np7SVWI7zlC40HknV2cuK+GCtMxEqovRORVD2r3ldCri
 3tiL0BteDwui72y4rjdgvv15IJX+2Imfs9ANb4T0SJ1h5UzG1aJ2xocR1H250XEd9M
 w09LntFoQEMCGz6wxmEwxmpC9TbVdBYBaWkqASvA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.75.80] ([80.245.75.80]) by web-mail.gmx.net
 (3c-app-gmx-bs06.server.lan [172.19.170.55]) (via HTTP); Sat, 5 Feb 2022
 15:58:54 +0100
MIME-Version: 1.0
Message-ID: <trinity-36c99dd7-0b16-47b1-b6c1-0e86097fcc99-1644073134441@3c-app-gmx-bs06>
From: Frank Wunderlich <frank-w@public-files.de>
To: barebox@lists.infradead.org
Date: Sat, 5 Feb 2022 15:58:54 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:8kYZBOorKo/kVulgviN9hwQuUlJiBshasVPp5rbDfbI4uTcJOXonUHM/RPXe4BrEOc23P
 XCvZSTqHTGkhr5fJP8M64/48bXwg3AT8AvGK+su3LaF6bAZGNgX8BDN8iOD3zimdUdmLiZmfitlM
 XmYD/dbA++JjkV92H+Fd1aU+SeeldHUyP04rjWc86wA/s1NGFGP4e7rZV5aRmjNXipozBVSgJ4aW
 L/FacfMLUxXfUAwBwyX3O4nFaLTNtBQlkxIjKPN1zgls2IuXIDVoieQv1meQu/UGlyWzlboN7S47
 Qo=
X-UI-Out-Filterresults: notjunk:1;V03:K0:PfL3w7o1PvQ=:9fnjq1FdA8cBSOSVEz8HVd
 kSoahJJOMqHnC70mit5LFB7bYX1FEY3FsPZ9k+wWqmZuw+keNnlaXCx+KbzrbBsLyfS8Pa5kL
 kURz34N0rZfxD7RNV2gn40QK1rhiIlik6ksMLfayZiOdWoppMpr2BjXoQeHk7Xj5oH5g6Jemo
 mAORt/wycQM/KnAfLJbcXxuqCmucWpdNBKYzOc1kBQp3mEo2Zs+I85pQ43NTU22KoCVdCSO4/
 jlWkfNRhXEtz4paMbGEq7ZpPPnDWs11C9VHsDi9Isx4p5SfK4kfCKkGQsufC+4pce6nExPg0p
 lj/PIEuS7TNJxMaWSsSolaVWQMd77SvN1W2mxTQNghD+wvhRRmwb/+X8xP9E4wxuLlujlhcuY
 +dew341tpZ17zlave2kiQecuv0dx9Yi57Y9U0Ybq5d9ISgligDks7iWoeO+5OJzNbflu2Qc0y
 BcEVX/pBxkRhEll7OSLYUXUj4bC5re82P352c0B1p1GGBVmjx15aAXUaW5hAEyXGXfgCI7zjQ
 7f4XDiRP3jwe4QuER23rqzW4dq4ejY/MaVjcCocyjCiMMOmiuS7F4485UwVm3mux8mUrd1HK5
 sNlFNJh4KiJMBusj+t8Zt+DcTscf29y23Bldo9Hh5koZ2S9rHMUHnqE1ynKSzrmKzLvzTA4cJ
 enX9x6pgy23nKpqthAOClfiz75V1kykld6UzHzml7SL8J4x57o4mCCwpgG6oI7yPPcyJKIsfQ
 /Cwq8UbGzH1jPibReD8sCR9E0H9wUiLl5K2qFtF9KJ6+XJFhaQ3xgwwMANFrHIPImrJZEQZUx
 WmtPQGv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_065857_822840_2058AC03 
X-CRM114-Status: UNSURE (   7.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: blspec - autoboot + timeout/default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

can i boot directly to blspec-menu (boot -m sd.1) with setting in default env and boot a specific entry (by title/filename) after some time (e.g.3-5 sec)?

i have defined some blspec files in /mnt/sd.1/loader/entries/ and i want to show the menu by default and after some time the entry from specific file should be booted. this gives user the possibility to modify this conf to define his kernel for autoboot in headless mode.

i tried to modify defaultenv/nv/boot.default, but this needs filenames in /env/boot, no commands and if i use a script, it cannot start the "boot -m sd.1" because the /env/boot scripts run bootm (tried loading barebox with such script - ended with putting a separate script in /env/bin/)

btw. is there a way to load environment from a txt file from a specific partition (similar to uboots uEnv.txt)?

regards Frank


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

