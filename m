Delivery-date: Wed, 23 Jun 2021 06:35:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvuc4-00040i-OL
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 06:35:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvuc3-0002tx-Te
	for lore@pengutronix.de; Wed, 23 Jun 2021 06:35:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ebHZGUPsikmE2FVJy4BVjc+Tlf7yso9Q+6YO17en3mM=; b=SpqakGv3hSkQf9
	5xRI0WShBrR6+FCR+hwT2zhzWcMXwlWv0LsJZ4lfaEAzp8o/oy69pfZ90xDiABvCFPjDP9nObVmRD
	bRRSAQjSzZQ7sE/aaeN8IAh3QVzGm8KqNKMBvH94AMHRpkrqQArNyWV9bGRT36haJUHdw3Pzqo07v
	5nPmxKdA6XedR0zoJbMNK7/PH6U24SQQkJEQpnnVQLt1GcYFmY21Gn5zHx4SvzCUlxGwmhuYLaVSF
	7/dg8BybTRmHBsm29hun7SSkEZR0JEXTSsDkUFIvpnuTZqxykDaNUbz5taM2nV4xXFXaPqMmTUafw
	knl6Y5N/UFoXva/snmyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvuaY-009GrA-0e; Wed, 23 Jun 2021 04:34:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvuaR-009GpW-LO
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 04:34:06 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuaP-0002Zi-Hr; Wed, 23 Jun 2021 06:34:01 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuaP-00029r-8n; Wed, 23 Jun 2021 06:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 06:33:56 +0200
Message-Id: <20210623043359.18391-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_213403_771250_E92EB23C 
X-CRM114-Status: UNSURE (   8.51  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] firmware: Add support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Steffen already sent this. This version has some improvements like
better error reporting. Also we uncompress only files we detect as
compressed files, not just everything we do not detect as unknown file.

Sascha Hauer (2):
  filetype: Add function to check if a filetype is a compressed file
  libfile: Add copy_fd()

Steffen Trumtrar (1):
  firmware: add support for compressed images

 common/firmware.c  | 50 ++++++++++++++++++++++++++++++++++++++++++----
 include/filetype.h | 14 +++++++++++++
 include/libfile.h  |  1 +
 lib/libfile.c      | 34 +++++++++++++++++++++++++++++++
 4 files changed, 95 insertions(+), 4 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

