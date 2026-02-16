Delivery-date: Mon, 16 Feb 2026 09:48:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHd-002GIv-2O
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:48:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHd-0002nw-Ui
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:48:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PDn5oEvGDp9mXBfQOqCgxhpygjH8Iw5xar/G7oqvLSk=; b=cbK5MzW/aPYmgMvYMCk60GI0iD
	srl5bx//xwoIfc3VmSWv5IWhjKz1dH0cUQRF3vBXaHJgbKUK9E8RcInG8bao9bVZBKIiDCcWlaof5
	O9G1wA5CpWQKp0MyboBc2+866VQVhQFsAGRX8i2kfWuBE8iBySf5H2vqL4V+jkwY08n8AU61cKl2C
	Tm2DxeNVH9Voz8qOPxO4sSOmJ/RY6/TjafzyKP4T4pfrSugXsZgkteCBpW65NUntknDzxIdWU+KTt
	W78JQSsvPx4n3I1KL5JEcChxXaGhU6JeI+JmrNKVUvXh+oro/Vzi4SDdpjqdRtJYFbhQ3RzqBzdCK
	UyhopkOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruHE-00000006Bkm-2hLP;
	Mon, 16 Feb 2026 08:48:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruH1-00000006BZa-3eMZ
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:48:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0002Ij-1K; Mon, 16 Feb 2026 09:48:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGy-0012D5-1d;
	Mon, 16 Feb 2026 09:48:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGz-0000000Eudd-3BNg;
	Mon, 16 Feb 2026 09:48:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Feb 2026 09:44:00 +0100
Message-ID: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004810_815315_67285EA5 
X-CRM114-Status: GOOD (  11.25  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 00/39] efi: fix bugs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While adding new tests for the barebox EFI support, a number of issues
were unearthed. Additionally, I ran Claude Code to determine suspicious
looking patterns and it found a number of extra issues, mostly in error
paths.

Except for patches 36, 37 and 38, all other patches affect only efi/,
so I hope it's ok to merge into master after review.

Ahmad Fatoum (39):
  efi: fix potential NULL dereference
  efi: trace: fix EFI_EXIT2 to not evaluate output value on error
  efi: loader: fix CRC32 computation in table header update
  efi: loader: fix pointer vs value comparison in free_efi_only
  efi: loader: fix disk write return value check
  efi: loader: fix EFI_ENTRY/EFI_EXIT ordering in efi_set_time
  efi: runtime: fix missing EFI_EXIT in efirt_query_variable_info
  efi: loader: fix file handle leak in efi_file_from_path
  efi: loader: fix missing field init in deferred protocol add
  efi: loader: fix memory leak in efi_var_to_file
  efi: loader: fix multiple bugs in efi_loader_bootm
  efi: loader: fix return type and memory leak in efi_smbios_register
  efi: loader: fix memory leak in efi_dp_split_file_path
  efi: loader: fix HII string table realloc and memset bugs
  efi: loader: fix format specifier and missing EFI_EXIT in boot
    services
  efi: fix unreachable free in efi_set_variable_printf
  efi: payload: fix missing NULL check after read_file in handover
  efi: payload: fix EFI page leak in efi_read_file
  efi: payload: fix inverted error check after state_load
  efi: fix out-of-bounds read in device path unknown node printing
  efi: payload: fix wrong page count in efi_unload_fdt
  efi: fix out-of-bounds read in 1394 device path printing
  efi: loader: initialize block IO ops before installing protocol
  efi: runtime: fix variable store bounds check to account for alignment
  efi: fix Fibre Channel device path type vs sub_type comparison
  efi: loader: fix file open mode always setting O_RDWR
  efi: loader: fix NULL pointer dereference when deleting root volume
    handle
  efi: loader: fix memory leak of variable file buffer on success
  efi: loader: fix memory leak in efi_var_collect on buffer overflow
  efi: fix signed format specifier for uint64_t timestamp
  efi: payload: fix possible memory leaks during init
  efi: payload: protect against missing state alias
  efi: loader: fix stale return value in console out-of-memory path
  efi: loader: fix off-by-one in FAT codepage translation
  efi: loader: fix co-existence with EFI payload support
  efi: payload: skip ELF MMU handling when booted via stub
  efi: payload: register dummy device tree
  console: introduce helper for printing binary buffers as-is
  efi: loader: protocol: console: don't turn LF into CRLF

 common/console.c                         | 31 +++++++++++++++++++++++
 drivers/of/base.c                        |  8 ++++--
 efi/devicepath.c                         |  6 ++---
 efi/efivar-filename.c                    |  3 +++
 efi/efivar.c                             |  7 ++++--
 efi/loader/boot.c                        |  4 +--
 efi/loader/bootm.c                       | 22 ++++++++--------
 efi/loader/defaultvars.c                 |  4 +++
 efi/loader/devicepath.c                  |  4 ++-
 efi/loader/efi_var_common.c              |  4 ++-
 efi/loader/efi_var_file.c                |  5 ++--
 efi/loader/memory.c                      |  2 +-
 efi/loader/protocols/console.c           | 32 +++++++++---------------
 efi/loader/protocols/disk.c              | 26 +++++++++----------
 efi/loader/protocols/file.c              | 19 +++++++++++---
 efi/loader/protocols/hii.c               |  5 ++--
 efi/loader/protocols/unicode_collation.c |  2 +-
 efi/loader/runtime.c                     |  4 +--
 efi/loader/setup.c                       |  8 +++++-
 efi/loader/smbios.c                      |  3 ++-
 efi/loader/table.c                       |  1 +
 efi/payload/boarddata.c                  | 11 ++++++++
 efi/payload/bootm.c                      |  2 +-
 efi/payload/entry-multi.c                | 13 ++++++++++
 efi/payload/handover.c                   | 16 +++++++++---
 efi/payload/image.c                      |  4 ++-
 efi/payload/init.c                       | 12 +++++++--
 efi/runtime/efi_var_mem.c                |  4 +--
 efi/runtime/services.c                   |  4 +--
 include/console.h                        |  1 +
 include/efi/loader/trace.h               | 10 +++++---
 include/efi/mode.h                       |  6 ++++-
 pbl/mmu.c                                |  4 +++
 33 files changed, 203 insertions(+), 84 deletions(-)

-- 
2.47.3



