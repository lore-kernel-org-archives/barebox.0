Delivery-date: Tue, 27 Sep 2022 19:24:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odEJg-00Gi61-0J
	for lore@lore.pengutronix.de; Tue, 27 Sep 2022 19:24:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odEJe-0001bP-Sz
	for lore@pengutronix.de; Tue, 27 Sep 2022 19:24:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ajf9QKJtv0Z0PLFHYfyDO+aC2CNKXFDO0OwOeRABz7E=; b=hVuASpnGZmNsYlkslCdPs6SThR
	oP0f1e6jGsdRaVokGT/MEWZx2S8VlTGDxNvNArXNQFF2TPF8tUrk7NAhiExVuw6z0GZEFPZs8VZmT
	i9lhpcVO9DMX/FrD3mWwzRM8kCWDiX9of/8XMNN8vdITJJgUplfTqRgx5c6YkVovzSFz80kW/MSzq
	+uMlWK7zVNaVM8PMCSSbWbe+LmlM+xskIldLV9D+0a7CVAoRrdQyMEuEYx+psZa5p2Tm+fpBL/zju
	F6XhCcwx1u3/aMLG9cB2ap4B0OlAW3MjT4LMEbBcCNLVtioKHsX0N4S/+zgbiLdFFZ57tEuCrGRkE
	hVsbO+Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEHs-00Bx8b-0X; Tue, 27 Sep 2022 17:22:28 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEHm-00Bx1g-38
	for barebox@lists.infradead.org; Tue, 27 Sep 2022 17:22:24 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28RHLbhE1085026
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 27 Sep 2022 19:21:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1664299298;
	bh=ajf9QKJtv0Z0PLFHYfyDO+aC2CNKXFDO0OwOeRABz7E=; l=985;
	h=From:To:Subject:Date;
	b=Q1PpLzlgBUdVjoRtxsusCnvOtZWbwnLrFCuDaTesQQ+hNbXDNoE+Fu2DhhDUDh+xF
	 /lmOhn5AbjpDEapEZX3Ak6nQ6VK17xjG3y16aJjabBWrSdI7KyNlvr7+OufMH6urkZ
	 xBx4caN0vSehMf4iWcrCsbVqHUW9mxOd3INZqwCvnpmDn+OSW5Cc5j9UZfCucoo5n3
	 WpLh50u4lsrD6nrRAKXA6yBKTFQVmHryYPmNtFsVKaVLPcg/hPgRwoZfpznOa/OX+g
	 Fd8rk0ZbJFrrrFcoZMUCNlLeGWs8DYN2XvPlt8YkmHoH0wFfl9YSh0UkdPt1VGq5NJ
	 8LUDXofvpxR1Q==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28RHLYY91345129
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 27 Sep 2022 19:21:35 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ([192.168.12.73])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id D5CLUN39HW; Tue, 27 Sep 2022 19:21:34 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 28RHLY9s1215063
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <barebox@lists.infradead.org> from ensc@sigma-chemnitz.de; Tue, 27 Sep 2022 19:21:34 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1odEGz-002mGp-32
	for barebox@lists.infradead.org;
	Tue, 27 Sep 2022 19:21:33 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Sep 2022 19:21:33 +0200
Message-ID: <lyr0zw68de.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 6333311e934b9d3e053585da
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_102222_922741_0AB69E05 
X-CRM114-Status: UNSURE (   5.10  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Broken ubifs-zstd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

trying to mount a zstd compressed ubifs fails on an iMX6ULL with

| ERROR: UBIFS error (ubi0:0): 9fe6691d: cannot decompress 2612 bytes, compressor zstd, error -22
| ERROR: UBIFS error (ubi0:0): 9fe6692d: cannot decompress 2612 bytes, compressor zstd, error -22
| ERROR: UBIFS error (ubi0:0): 9fe66a65: bad data node (block 0, inode 815)
| ERROR:  magic          0x6101831

(2022.09 and master).


After reverting

| commit b4a9782d4f56333e897dccc35c2c27e2605f6b93
| Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
| Date:   Wed Jul 13 12:09:18 2022 +0200
| 
|     lib: zstd: sync with Linux

it works again (both in Linux 5.15 and barebox).


ubifs was created by recent OpenEmbedded kirkstone with

| MKUBIFS_ARGS = "-F -m 2048 -e 126976 -c 2048 --compr=zstd"


Warnings are triggered (after fixing assert()) at

| WARNING: at lib/zstd/decompress/../common/bitstream.h:390/BIT_reloadDStreamFast()!


Is anybody else experiencing these problems?



Enrico


