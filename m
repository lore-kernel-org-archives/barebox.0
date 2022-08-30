Delivery-date: Tue, 30 Aug 2022 09:47:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvy5-001UZf-Fo
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:47:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvy2-0005T6-V4
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:47:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m2Am6DhISvLiWCm9WPrLMLkRb4bq+kH+Lc42qWaM4a4=; b=BtNFQP5V5wI+R+Rcac9tniRsT5
	dfxGnhluVLF1aTxt2GcEMfoamuyMDoP5uuohfq0g5c4GFjX0RRLQ/MXWMOJTwAmchkZvDZhb+2Jm3
	QZ/72mRAzHccs8wJJwjBCzy+zCi7zGIfdSyPfrGkb21vz6+nxrRrh7mz1hgErtpZsQaEfMn1cS2X1
	pf4wzUjjuUf+bQFerfACgPIRcMt7MegT+vCo4OCdVHkctrwaLrnbe5BP3hRpjOcQFnAKhMBfD/CJJ
	9GOYslnwDauOqVeOujNY5A6cfHd+5O2dKjuN2RUvsNdI5Xokmk8uEZ7SNX5w3qdNGJ5Lt47jviZfB
	2nom60NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvwD-00EsMQ-36; Tue, 30 Aug 2022 07:45:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqN-00EpXI-29
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=m2Am6DhISvLiWCm9WPrLMLkRb4bq+kH+Lc42qWaM4a4=; b=LP5u2dXurq6oTo17sMNivyXQ9H
	KpHtybLZby2p7SWshLR51gza1D1zjJxjJYii8e47E2ojjBU2DQ7eHX148SQzAz4ugGLfDEgwFTzE8
	B2+SQxkkAmJN3gpjQUyBrE0129TzZIkXBZ2q0B/5bKONzdL2CrRUCh8GCDZB3xFZWdPevr+JjbEj2
	vbz/dyU6YEybIi4QM77EQ6Gvzlypov88If0soVjy1T732tpZ6uptPCOxjfQWY7pK635Er3NHn8saK
	KGBBfPkuKFJAG28ZN0iBVFCpBwfSt1otApBcQ6TecF8mU9Y+x/6I5o25k3lNdy5OZg+Xgo18C2ZxR
	NQKLVJZA==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqC-007m63-MK
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:29 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cg3q806710
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845122;
	bh=m2Am6DhISvLiWCm9WPrLMLkRb4bq+kH+Lc42qWaM4a4=; l=5541;
	h=From:To:Cc:Subject:Date;
	b=V5Xh4kwMQImvp6PSZpB3SdB5hMItCcy3JuROn0hxaRlwOvOKv53YxEkBG7t9euUWj
	 Pe1bK88rzHZGsstN5xL5p5dcTqI+nMZNxpR1kiqx/DPrrp0x0ouQjlIrIS6yx4fpG7
	 sePZ2szrgxQa1Q249dGO4YfOugKBgQX+F4RtzuMATTuRDXp8TndHf+vl466RTlyNRw
	 F/0vUfUJ7PB6yNvoDUstC3uUz/TYFAGGyxtpvGBOqsh0ChX9k7MzQaE6CnbXHRnWCi
	 VCYQGekV5V/M65YUwHvsAIDhMwFX1Up/BoDdHqtz7IuhSTS2TwutV4TyjAkJrDJlQv
	 5JsikuLOQGOgg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cOCw1001065
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:25 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 841F119C3BC; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cJlf772599
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpD-00BJ2d-O3;
	Tue, 30 Aug 2022 09:38:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:37:55 +0200
Message-Id: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083921_635673_C5263B84 
X-CRM114-Status: GOOD (  16.69  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 00/21] add "windowsize" (RFC 7440) support for tftp
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

For slow connection speeds, smaller files (1MiB, 4 MiB + 20 MiB) were
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


Patchset has been tested with

| for i in data-0 data-100B data-1KiB data-1432B data-64KiB data-1MiB data-4MiB; do
|     tftp    "$i"
|     tftp -p "$i"
| done

against tftp servers with and without rfc 2747 support (OACK).


The window size related parts of the patchset (with deactivated
selftest) increase the barebox binary size by

| add/remove: 6/0 grow/shrink: 7/2 up/down: 1572/-32 (1540)
| Function                                     old     new   delta
| tftp_handler                                 756    1324    +568
| tftp_allocate_transfer                         -     196    +196
| tftp_put_data                                  -     184    +184
| tftp_window_cache_remove                       -     124    +124
| tftp_window_cache_get_pos                      -     120    +120
| tftp_send                                    296     412    +116
| tftp_do_open                                 428     512     +84
| tftp_states                                    -      72     +72
| tftp_do_close                                260     312     +52
| tftp_init                                     16      60     +44
| tftp_open                                     64      68      +4
| tftp_lookup                                  136     140      +4
| g_tftp_window_size                             -       4      +4
| tftp_read                                    180     164     -16
| tftp_poll                                    180     164     -16
| Total: Before=629556, After=631096, chg +0.24%

Turning of the datagram cache (CONFIG_FS_TFTP_REORDER_CACHE_SIZE=0)
reduces the overhead to

| add/remove: 3/0 grow/shrink: 6/2 up/down: 808/-32 (776)
| Function                                     old     new   delta
| tftp_handler                                 756    1092    +336
| tftp_allocate_transfer                         -     144    +144
| tftp_send                                    296     412    +116
| tftp_do_open                                 428     512     +84
| tftp_states                                    -      72     +72
| tftp_init                                     16      60     +44
| tftp_open                                     64      68      +4
| tftp_lookup                                  136     140      +4
| g_tftp_window_size                             -       4      +4
| tftp_read                                    180     164     -16
| tftp_poll                                    180     164     -16
| Total: Before=629556, After=630332, chg +0.12%

Restoring the old behaviour by CONFIG_FS_TFTP_MAX_WINDOW_SIZE=1 shows
an overhead of

| add/remove: 3/0 grow/shrink: 6/2 up/down: 720/-32 (688)
| Function                                     old     new   delta
| tftp_handler                                 756    1088    +332
| tftp_allocate_transfer                         -     144    +144
| tftp_do_open                                 428     512     +84
| tftp_states                                    -      72     +72
| tftp_init                                     16      60     +44
| tftp_send                                    296     328     +32
| tftp_open                                     64      68      +4
| tftp_lookup                                  136     140      +4
| g_tftp_window_size                             -       4      +4
| tftp_read                                    180     164     -16
| tftp_poll                                    180     164     -16
| Total: Before=629556, After=630244, chg +0.11%


Enrico Scholz (21):
  tftp: add some 'const' annotations
  tftp: allow to change tftp port
  cmd:tftp: add '-P' option to set tftp server port number
  tftp: do not set 'tsize' in WRQ requests
  tftp: assign 'priv->block' later in WRQ
  tftp: minor refactoring of RRQ/WRQ packet generation code
  tftp: replace hardcoded blksize by global constant
  tftp: remove sanity check of first block
  tftp: add debug_assert() macro
  tftp: allocate buffers and fifo dynamically
  tftp: add sanity check for OACK response
  tftp: record whether tftp file is opened for lookup operation only
  tftp: reduce block size on lookup requests
  tftp: refactor data processing
  tftp: detect out-of-memory situations
  tftp: implement 'windowsize' (RFC 7440) support
  tftp: do not use 'priv->block' for RRQ
  tftp: reorder tftp packets
  tftp: add selftest
  tftp: accept OACK + DATA datagrams only in certain states
  tftp: add some documentation about windowsize support

 Documentation/filesystems/tftp.rst |  38 ++
 commands/tftp.c                    |  22 +-
 fs/Kconfig                         |  36 ++
 fs/tftp-selftest.h                 |  56 +++
 fs/tftp.c                          | 763 +++++++++++++++++++++++++----
 test/self/Kconfig                  |   7 +
 6 files changed, 824 insertions(+), 98 deletions(-)
 create mode 100644 fs/tftp-selftest.h

---
v3 -> v4
  - fix operation with non rfc 2347 servers
  - do not send 'tsize' in WRQ requests
  - add more sanity checks
  - add some documentation

v2 -> v3
  - use "port=XX" mount options instead of global 'tftp.port' variable
  - allocate fifo and send buffer dynamically based on block- and
    window size of the transfer.  Do not use fixed constants anymore
  - rewritten cache code; use bitmap based functions with O(1)
    complexity instead of iterating over (small) arrays
  - unittest for cache functions
  - add information about binary sizes

v1 -> v2
  - fixes for non rfc7440 servers

-- 
2.37.2



