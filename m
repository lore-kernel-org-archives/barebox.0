Delivery-date: Mon, 18 Jul 2022 14:25:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoI-00D7AQ-9l
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoD-00083A-Ji
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8shnPxeZgVvnhsZhZe1ntv2gfRJ0Yf75blr14cN5ptw=; b=Eq9xoJO99R411gs00RHt6gQP+y
	1ey46Y4vmI9xeqPLdRdvj8h/SXlovsfbqPHlEox05iuxPB9mRQvzqBkK5l7seRTi0szPWmKk/BE/B
	BvIzd5eBXSRIlCb1HR5S8SM51DdcI9dhjg17Dz4B3PoNzD4qqYrI1ePabpqvceLxTFSQCPozQFLO0
	/OgLVhVV/Jm40iGIT83jQQi9IJgG4c2WhB/lSA1iKY8oqjsP2eGEM5hPYxaCd4rTLKVdgExEUayBR
	37SI0fYu5a0Ak3gUfS/u0CR/p1bodFqW0wbDEBifgBdIWenExZi9ug02wrYtvJn36CIRJ3IZk0FNC
	3dnOxLPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmr-00DE09-Lp; Mon, 18 Jul 2022 12:23:45 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmZ-00DDPj-MU
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:30 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMbv5390600
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146957;
	bh=8shnPxeZgVvnhsZhZe1ntv2gfRJ0Yf75blr14cN5ptw=; l=2586;
	h=From:To:Cc:Subject:Date;
	b=CtKjT2FAHJGqpAQfHeU1dUtJ8kTELSVlF62yvhyeQkyu9OjucRIF8GhxzN/ISJKfV
	 qI6nbMmXELrblq0ZjVhjr45thMZDU1zVkVyPOJk751ziGVTcgKHGkMg8sPouSU+663
	 raEuMMbBNbS1fZ23N0d+tUj2V1bO0OD3OYUOZC9DDiNCu7FQy3+uOi4mt017XGjauO
	 7uH0+EJgV2oifzSyzAiRHhJY2y2W2BsL5jeCEez04gjT4VM/b9exw0xMwTG+wQDU0L
	 nEd9sIecCGUKo1isTlXm9i6PVW9I06c3vKI+f29m534NTQpXb3AQo4vjR61ZDmiUZu
	 Gg82hM2cr8c4Q==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMYg1487148
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:34 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 16B30789147; Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMWGB371847
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g34-KI;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:15 +0200
Message-Id: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052328_083362_96632BBF 
X-CRM114-Status: GOOD (  11.00  )
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
X-Spam-Status: No, score=-104.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/13] add "windowsize" (RFC 7440) support for tftp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The tftp "windowsize" greatly improves the performance of tftp
transfers.  This patchset adds support for it.

The first two patches are a little bit unrelated and enhance the 'cp
-v' output by giving information about the transfer speed.  They can
be dropped if they are unwanted.

I tested the function with an iMX8MP platform in three environments:

  - at home over OpenVPN on an ADSL 50 line  -->  27x speedup
  - 1 Gb/s connection --> 9x speedup
  - connection over 100 Mb/s switch  -->  4x speedup

In the test, I downloaded variable sized files which were filled from
/dev/urandom.  E.g.

| :/ global tftp.windowsize=128
| :/ cp -v /mnt/tftp/data-100MiB /tmp/data && sha1sum /tmp/data
|         [################################################################] 104857600 bytes, 98550375 bytes/s

For slow connection speed, smaller files (1MiB, 4 MiB + 20 MiB) were
used.


The numbers (bytes/s) are

 | windowsize | VPN       | 1 Gb/s     | 100 Mb/s   |
 |------------|-----------|------------|------------|
 | 128        | 3.869.284 | 98.643.085 | 11.434.852 |
 |  64        | 3.863.581 | 98.550.375 | 11.434.852 |
 |  48        | 3.431.580 | 94.211.680 | 11.275.010 |
 |  32        | 2.835.129 | 85.250.081 | 10.985.605 |
 |  24        | 2.344.858 | 77.787.537 | 10.765.667 |
 |  16        | 1.734.186 | 67.519.381 | 10.210.087 |
 |  12        | 1.403.340 | 61.972.576 |  9.915.612 |
 |   8        | 1.002.462 | 50.852.376 |  9.016.130 |
 |   6        |   775.573 | 42.781.558 |  8.422.297 |
 |   4        |   547.845 | 32.066.544 |  6.835.567 |
 |   3        |   412.987 | 26.526.081 |  6.322.435 |
 |   2        |   280.987 | 19.120.641 |  5.494.241 |
 |   1        |   141.699 | 10.431.516 |  2.967.224 |
 |------------|-----------|------------|------------|
 | unpatched  |   140.587 | 10.553.301 |  2.978.063 |



Enrico Scholz (13):
  progress: add close_progress() to display some statistics
  libfile:copy_file: show statistics in verbose mode
  tftp: minor refactoring of RRQ/WRQ packet generation code
  tftp: replace hardcoded blksize by global constant
  tftp: record whether tftp file is opened for lookup operation only
  tftp: reduce block size on lookup requests
  tftp: refactor data processing
  tftp: detect out-of-memory situations
  tftp: implement 'windowsize' (RFC 7440) support
  tftp: do not use 'priv->block' for RRQ
  tftp: reorder tftp packets
  tftp: allow to change tftp port
  tftp: add sanity check for OACK response

 fs/Kconfig          |  36 ++++++
 fs/tftp.c           | 298 +++++++++++++++++++++++++++++++++++++-------
 include/progress.h  |   1 +
 lib/libfile.c       |   3 +
 lib/show_progress.c |  25 ++++
 5 files changed, 319 insertions(+), 44 deletions(-)

-- 
2.36.1



