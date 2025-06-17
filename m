Delivery-date: Tue, 17 Jun 2025 10:20:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRYj-008CxF-1T
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 10:20:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRYi-0008S8-RK
	for lore@pengutronix.de; Tue, 17 Jun 2025 10:20:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s7ZbLOLnTd5vXrNmYF5kZAhy6qo1yPGXVXO/hz9DkrU=; b=OLXb1bTbHCwWuyxgc++CZRxpab
	MfvrS7GlzTFAq8MKmcIpgHLXkSC6bv2eIXEUeZR5fPlKDEWfWRnthpWGKkW8ywmepjRRB5k6grYRj
	0cgLZjfjUpdJdZMRWxa8V33prDWR4ZkQ+qz4KgLFQOIwGwk1y7oB93dp7Nk1+Tl136ucssFmajFzN
	pg7YkSsiXhJhovIXCYcUT4zDGpLsQPz1lPezR6pK0zU4Ck2uhpSaHTmOAd8F/oGSoG2cy0+JMJRBe
	jHA/kiz9EwvuygylRgdRxRroA04G8xilEYOMHB+7dbOLVhmzAVoPSoKliYnN2f1F1fNv0bRd0n0w6
	StrYRNQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRYF-00000006Zw5-0gdK;
	Tue, 17 Jun 2025 08:20:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRVX-00000006ZXq-3q1N
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 08:17:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uRRVU-0003eu-Vm; Tue, 17 Jun 2025 10:17:24 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uRRVU-003wUg-2W;
	Tue, 17 Jun 2025 10:17:24 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uRRVU-001O1j-29;
	Tue, 17 Jun 2025 10:17:24 +0200
Date: Tue, 17 Jun 2025 10:17:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFEklASqd3f7AUT5@pengutronix.de>
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
 <20250612065812.2025665-10-o.rempel@pengutronix.de>
 <aFEhPCJWVpRUVbqk@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aFEhPCJWVpRUVbqk@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_011727_960296_97DEB17D 
X-CRM114-Status: GOOD (  28.15  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 9/9] test: Add pytest suite for NVMEM framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jun 17, 2025 at 10:03:08AM +0200, Sascha Hauer wrote:
> On Thu, Jun 12, 2025 at 08:58:12AM +0200, Oleksij Rempel wrote:
> > Introduce test_nvmem.py, a pytest-based suite for
> > validating Barebox's NVMEM framework and shell commands.
> > It uses pytest-labgrid for target interaction.
> > 
> > Tests cover:
> > 
> > - nvmem command: Listing, dynamic rmem creation (-c, -v), parameter
> >   validation, help.
> > 
> > - CDEV operations (/dev/rmemX): md/mw for read/write with various access
> >   sizes (byte, word, long), byte swapping (-x), string/numerical data,
> >   and wrapped md output.
> > 
> > - Protection: protect/unprotect commands, including writes to
> >   protected/unprotected areas, out-of-bounds protection attempts, and
> > merging of overlapping protected ranges.
> > 
> > Includes helpers for parsing md output and checks command return
> > codes and data integrity. A session-wide fixture skips tests if
> > essential related CONFIGs are disabled.
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  test/py/test_nvmem.py | 1012 +++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 1012 insertions(+)
> >  create mode 100644 test/py/test_nvmem.py
> > 
> > diff --git a/test/py/test_nvmem.py b/test/py/test_nvmem.py
> > new file mode 100644
> > index 000000000000..fdb3c8eb6022
> > --- /dev/null
> > +++ b/test/py/test_nvmem.py
> > @@ -0,0 +1,1012 @@
> > +import pytest
> > +import re
> > +
> > +# --- Essential Configuration Check ---
> > +
> > +# This list should contain the CONFIG strings for all commands and features
> > +# that are absolutely essential for the NVMEM test suite to run.
> > +ESSENTIAL_CONFIGS = [
> > +    "CONFIG_CMD_NVMEM",       # For the 'nvmem' command itself
> > +    "CONFIG_CMD_MD",          # For the 'md' (memory display) command
> > +    "CONFIG_CMD_MW",          # For the 'mw' (memory write) command
> > +    "CONFIG_CMD_FLASH",       # For 'protect' and 'unprotect' commands
> > +    "CONFIG_NVMEM_RMEM",      # For creating dynamic rmem NVMEM devices
> > +    "CONFIG_FS_DEVFS"         # For /dev/ device character file paths
> > +]
> 
> There doesn't seem to be any config with this combination of options, so
> I assume this test will never be executed.
> 
> Specifically CONFIG_CMD_NVMEM is disabled in all defconfigs. It's a good
> thing for coverage to have at least one config with this option enabled,
> could you add it to multi_v8_defconfig?

Ack, and for sandbox. I was testing it on sandbox.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


