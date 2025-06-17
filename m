Delivery-date: Tue, 17 Jun 2025 10:03:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRIL-008CWY-0y
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 10:03:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRIG-0001Sk-PD
	for lore@pengutronix.de; Tue, 17 Jun 2025 10:03:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cV+duEfZzL8lM9jUbAaWf+9E3+y8snvN6WBx+4i47TM=; b=Uv6n5jotRERqkYmvNKuUHTZQh6
	AQ78X1emz0WpX+ex/iyZwgwTQsU5NqqZnFxKLFaE9U9wHy88P9AHHhP8k1QVj2gtF2L2Qr3+zsvnp
	fnbT+2RfILMLsEA0rLrcfmUPMakYGTypwDnqwuvZRR0MPIvWXo3auztDAiocylIc2DTUW3yosD0H8
	2eceWp6duHFGyn3RBMjc9ZFSKleuoeTAxC43lhizl/2QDM/BzKoWEk9uX5FFGgs5Q+REfaYtvsyfx
	/JSugDthmTbe2SzGSlqqJAhi1jNGCOuq7Pj4SUAe2BTfzZxHdUtFiDR1VgH9FIUfSP5xf99JjlYE1
	O6AxJRtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRHl-00000006Wt1-20RX;
	Tue, 17 Jun 2025 08:03:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRHi-00000006WrJ-1j51
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 08:03:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRHh-0000eQ-5l; Tue, 17 Jun 2025 10:03:09 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRHg-003wDH-3C;
	Tue, 17 Jun 2025 10:03:09 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRHg-001Nfz-2u;
	Tue, 17 Jun 2025 10:03:08 +0200
Date: Tue, 17 Jun 2025 10:03:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFEhPCJWVpRUVbqk@pengutronix.de>
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
 <20250612065812.2025665-10-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250612065812.2025665-10-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_010310_448375_2061EE38 
X-CRM114-Status: GOOD (  24.64  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 9/9] test: Add pytest suite for NVMEM framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 12, 2025 at 08:58:12AM +0200, Oleksij Rempel wrote:
> Introduce test_nvmem.py, a pytest-based suite for
> validating Barebox's NVMEM framework and shell commands.
> It uses pytest-labgrid for target interaction.
> 
> Tests cover:
> 
> - nvmem command: Listing, dynamic rmem creation (-c, -v), parameter
>   validation, help.
> 
> - CDEV operations (/dev/rmemX): md/mw for read/write with various access
>   sizes (byte, word, long), byte swapping (-x), string/numerical data,
>   and wrapped md output.
> 
> - Protection: protect/unprotect commands, including writes to
>   protected/unprotected areas, out-of-bounds protection attempts, and
> merging of overlapping protected ranges.
> 
> Includes helpers for parsing md output and checks command return
> codes and data integrity. A session-wide fixture skips tests if
> essential related CONFIGs are disabled.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  test/py/test_nvmem.py | 1012 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 1012 insertions(+)
>  create mode 100644 test/py/test_nvmem.py
> 
> diff --git a/test/py/test_nvmem.py b/test/py/test_nvmem.py
> new file mode 100644
> index 000000000000..fdb3c8eb6022
> --- /dev/null
> +++ b/test/py/test_nvmem.py
> @@ -0,0 +1,1012 @@
> +import pytest
> +import re
> +
> +# --- Essential Configuration Check ---
> +
> +# This list should contain the CONFIG strings for all commands and features
> +# that are absolutely essential for the NVMEM test suite to run.
> +ESSENTIAL_CONFIGS = [
> +    "CONFIG_CMD_NVMEM",       # For the 'nvmem' command itself
> +    "CONFIG_CMD_MD",          # For the 'md' (memory display) command
> +    "CONFIG_CMD_MW",          # For the 'mw' (memory write) command
> +    "CONFIG_CMD_FLASH",       # For 'protect' and 'unprotect' commands
> +    "CONFIG_NVMEM_RMEM",      # For creating dynamic rmem NVMEM devices
> +    "CONFIG_FS_DEVFS"         # For /dev/ device character file paths
> +]

There doesn't seem to be any config with this combination of options, so
I assume this test will never be executed.

Specifically CONFIG_CMD_NVMEM is disabled in all defconfigs. It's a good
thing for coverage to have at least one config with this option enabled,
could you add it to multi_v8_defconfig?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


