Delivery-date: Mon, 15 Aug 2022 10:50:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVoC-006EdF-Qg
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:50:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVoD-0001lD-8g
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:50:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SqT4tbx5aeAsAKoWksX4SOetWkCY2btO78Asz0S57Og=; b=iuDYisEYjDme+QJxI9cqL9KYGG
	0m2nzMrwDPWD8skTk6FHNcMXJUoeoYyiAaZzuGKyJrEDvxoK49nXbOefkyjgWZNxBY3GSEuk7xRPJ
	jY4pTQvyj8m+p4kapmc1CbvpoK36s3CVYGE2a6L0Xs2ym9uOt8i6uBe7o1lnAimTLc/Eod9iQchkX
	c1aUAUqXYXaIbe5yvDt2YcD0lhhgiaHe1OaCpkMvAvVf3kwuYsHVqJv7dPm9lL306CbMr69V2b2iF
	IK3bxtkdhgvAFgE/IYJkmyjgWrZ2+SadcML/aVO+NFqP0iYcJpHUm+KHDnG538leoFMGMsrCk1t2D
	KlXXzI9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVmA-00DNCj-F2; Mon, 15 Aug 2022 08:48:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhF-00DKDs-F5
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=SqT4tbx5aeAsAKoWksX4SOetWkCY2btO78Asz0S57Og=; b=U/+pykejJOa8Z+Oli1qSC7EVlY
	9kPj/DVB0j9yzDcDj3z9jZd1EkrZveapr/rajMisrPAxO5k7E6b8Fci3lKdFs4CitC9/ZvpXW92JQ
	a2YNFt5JBgrCt3Z6fJryXDeOXqF7Z6q49Q/gG6A2fcWhk/NsmKeRqYOVy+p/6FiDR9Zv41iQxv+FB
	+PVw33rD66th+FkXfbuYKiOjH76qSBcvrfyVuQmr00mM8ecAJ/K5ZGzGlXHid6Nqc2cpIDfVyPDrL
	ueDcHGFe8Q9M4GN5Dph5OrqpDi048m4qYj/1gfLyquxm0pfXnHtvY676bs1SnL8FyClQbLXkbW5/o
	Ozc51OcQ==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh3-002cwG-Bg
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:35 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gmK0848768
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552968;
	bh=SqT4tbx5aeAsAKoWksX4SOetWkCY2btO78Asz0S57Og=; l=4991;
	h=From:To:Cc:Subject:Date;
	b=XcZIyqI1KUj72+5i0xTRcH96QOoAL29yUTA66c/RCnkqU6JxW3u6qXH24bv5KsSPF
	 0pRtaRjrzDC8eCTVsnYgumWAyE9SUFEubPX1fnzoW5/mRhqT0RhZQ/IhKndJoS8zlV
	 NXnluEIibSEwpSSptcEq32W+mUtVSxh2+jlm5ciouf2Ze6EPJ46+lR0uNIlurlGUCJ
	 uhXUGW1se8tjVybGKEtpHjotuqm22Pu2w7nCdhDbvSA/JMtnbfBcD2zCh/28kn0Rc8
	 bwGDVX2o738pOC/sKYIMtrvwYbhXvcC6HWIn7cWVUPsqwTLwicbUmVHkR83YEu/hVU
	 l12J+kVEk4dFw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gWWL822375
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 431FF44A5A6; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gPee811071
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIc-KB;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:04 +0200
Message-Id: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_094330_351540_E3B9C436 
X-CRM114-Status: GOOD (  16.35  )
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
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/18] add "windowsize" (RFC 7440) support for tftp
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


The window size related parts of the patchset (with deactivated
selftest) increase the barebox binary size by

| add/remove: 4/0 grow/shrink: 8/2 up/down: 1269/-32 (1237)
| Function                                     old     new   delta
| tftp_handler                                 756    1200    +444
| tftp_put_data                                  -     184    +184
| tftp_do_open                                 428     608    +180
| tftp_window_cache_remove                       -     124    +124
| tftp_window_cache_get_pos                      -     120    +120
| tftp_send                                    296     392     +96
| tftp_do_close                                260     312     +52
| tftp_init                                     16      60     +44
| __FUNCTION__                                 610     623     +13
| tftp_open                                     64      68      +4
| tftp_lookup                                  136     140      +4
| g_tftp_window_size                             -       4      +4
| tftp_read                                    180     164     -16
| tftp_poll                                    180     164     -16
| Total: Before=626114, After=627351, chg +0.20%

Turning of the datagram cache (CONFIG_FS_TFTP_REORDER_CACHE_SIZE=0)
reduces the overhead to

| add/remove: 1/0 grow/shrink: 7/2 up/down: 537/-32 (505)
| Function                                     old     new   delta
| tftp_handler                                 756     992    +236
| tftp_do_open                                 428     564    +136
| tftp_send                                    296     392     +96
| tftp_init                                     16      60     +44
| __FUNCTION__                                 610     623     +13
| tftp_open                                     64      68      +4
| tftp_lookup                                  136     140      +4
| g_tftp_window_size                             -       4      +4
| tftp_read                                    180     164     -16
| tftp_poll                                    180     164     -16
| Total: Before=626114, After=626619, chg +0.08%

Restoring the old behaviour by CONFIG_FS_TFTP_MAX_WINDOW_SIZE=1 shows
an overhead of

| add/remove: 1/0 grow/shrink: 7/2 up/down: 449/-32 (417)
| Function                                     old     new   delta
| tftp_handler                                 756     988    +232
| tftp_do_open                                 428     564    +136
| tftp_init                                     16      60     +44
| __FUNCTION__                                 610     623     +13
| tftp_send                                    296     308     +12
| tftp_open                                     64      68      +4
| tftp_lookup                                  136     140      +4
| g_tftp_window_size                             -       4      +4
| tftp_read                                    180     164     -16
| tftp_poll                                    180     164     -16
| Total: Before=626114, After=626531, chg +0.07%


---
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
---
Enrico Scholz (18):
  progress: add close_progress() to display some statistics
  libfile:copy_file: show statistics in verbose mode
  tftp: add some 'const' annotations
  tftp: allow to change tftp port
  cmd:tftp: add '-P' option to set tftp server port number
  tftp: minor refactoring of RRQ/WRQ packet generation code
  tftp: replace hardcoded blksize by global constant
  tftp: allocate buffers and fifo dynamically
  tftp: add sanity check for OACK response
  tftp: record whether tftp file is opened for lookup operation only
  tftp: reduce block size on lookup requests
  tftp: refactor data processing
  tftp: detect out-of-memory situations
  tftp: implement 'windowsize' (RFC 7440) support
  tftp: do not use 'priv->block' for RRQ
  tftp: add debug_assert() macro
  tftp: reorder tftp packets
  tftp: add selftest

 commands/tftp.c     |  22 +-
 fs/Kconfig          |  36 +++
 fs/tftp-selftest.h  |  56 ++++
 fs/tftp.c           | 640 +++++++++++++++++++++++++++++++++++++++-----
 include/progress.h  |   1 +
 lib/libfile.c       |   3 +
 lib/show_progress.c |  25 ++
 test/self/Kconfig   |   7 +
 8 files changed, 717 insertions(+), 73 deletions(-)
 create mode 100644 fs/tftp-selftest.h

-- 
2.37.1



