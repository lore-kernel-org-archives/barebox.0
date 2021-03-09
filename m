Delivery-date: Tue, 09 Mar 2021 23:54:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJlEn-0000dY-8s
	for lore@lore.pengutronix.de; Tue, 09 Mar 2021 23:54:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJlEm-0000xm-GE
	for lore@pengutronix.de; Tue, 09 Mar 2021 23:54:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E6uLCZDMkYWEycSakZtouialxgptiWp5yAz0Uva17hM=; b=DSEqFgr3UpU7IBQgcvFVItCOgG
	SOGNbvzJcGbQPLGUVzYgjjZpt80Xw8ZmyjvUbh3qKM0U+9EME77dhIm7W9nKg44tmjHJOniUmfxIH
	f7sryTA7wPrn6xS4yjKpipcGSVhcUIlJWd7dvFvnB7yzZ/c0jrv/cQBYbVaAbNcn3cjPlB9JYygz2
	k4KTGZScf4f6T880Qz1XXMWGAEV0Areh/XKFs0w7cxpuFF2Dazodyo6Pyv9LdrIa+K7CX/kf4ut+v
	gkN9f157Lcabh+Q8mYFVEbjyT09zMcNhYygXfBUqcNWoTaGaag6yGQgA9yoxfCWPZlEYrQ9q6Ke2J
	sqmO+GPA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJlDY-005bPw-4z; Tue, 09 Mar 2021 22:52:44 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJlDN-005bP8-C1
 for barebox@lists.infradead.org; Tue, 09 Mar 2021 22:52:35 +0000
X-Originating-IP: 83.135.91.161
Received: from geraet.fritz.box (unknown [83.135.91.161])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id BF8A660004;
 Tue,  9 Mar 2021 22:52:30 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: jbe@pengutronix.de,
	barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  9 Mar 2021 23:52:22 +0100
Message-Id: <20210309225223.1687415-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_225233_984249_AE317103 
X-CRM114-Status: UNSURE (   7.47  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/1] x86: retire legacy (non-efi) boot ?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox for legacy BIOS boot was reported broken on IRC nearly a year
ago. With the link error fixed, I can get some early debug output, but
barebox hangs early after when running under qemu-kvm:

  $ ./scripts/setupmbr/setupmbr -s 32 -m build/barebox-flash-image -d img && \
	kvm -drive format=raw,file=img -serial stdio -m 4G -cpu host -smp 2
  
  SeaBIOS (version 1.14.0-2)
  
  iPXE (http://ipxe.org) 00:03.0 CA00 PCI2.10 PnP PMM+07F8F4C0+07ECF4C0 CA00
  
  Booting from Hard Disk...
  BAREBOX JMP

With OSELAS.Toolchain-2013.12.3, but without the patch included here,
I can get a shell if I shrink down barebox, but no luck getting this
to work with a recent toolchain. There also seems to be some transient
issue that's triggered by the barebox size.

I'd assume that because no one stepped up to fix this so far, no one
cares and we could drop legacy BIOS boot support altogether.
New platforms should be using EFI anyway. Thoughts?

Cheers,
Ahmad Fatoum (1):
  x86: lib: fix link error for legacy (non-EFI) boot

 arch/x86/lib/barebox.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

