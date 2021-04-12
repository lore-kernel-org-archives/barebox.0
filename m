Delivery-date: Mon, 12 Apr 2021 12:14:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVtaW-000520-VM
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 12:14:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVtaV-0005zk-W3
	for lore@pengutronix.de; Mon, 12 Apr 2021 12:14:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ptKGA6Pg0PiDK1sOxDkj6Nsh8rpISOgbemus7iSv8o4=; b=MlNFSgGeog55CfNmYSAcItGCa
	uQzp/oZPYX6i40/Wr1Xr+FQ3uZMugctuJixapGHYA4Q93K6xZI8JR7OPsKXDjElO0B1Es5GP1OKw7
	R3U55AWI267jVLgB3PHQXpdtztneIrwg0FYqhgpJ6IBK1Lwb4sm0tYOEZ5pNwzdx+VOHKJ8xeq+yC
	wuiloZ9swi0ZpjZZxKyPHqUH8JAbys1hRuiwaor/svy4QKxD5vIUoS60bH+QdJ8dGpVDn+8XFzZQF
	J1ebEufTgH2g+oGlNqWrYtqmsUR6hm+GxQj+zMNQHNPa/GjzRYYo6P1PqgNX/8X2BLp83z8atde0Y
	+7Du+Zprw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVtYx-006Pkr-9y; Mon, 12 Apr 2021 10:12:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVtYq-006Pja-AH
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 10:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=KocDzUeVL2gUrRHecNCo/XPu2OPYSFWhMVK1J4QYDmI=; b=ppBw00QsBk4YsY6ja7xoKrcrZp
 0My6VoteZmSDk/Nccd5rdwg4FhWZGYk7Tl7+DPa3sx/4vLGl7s9t0UwI+23iqaxJRIJy7AULpV+H3
 ZDiN+KZQQ6loziZs/VmfNqDY4Sa4O5RyV+NoEQjqiBOkiqVEjmkik16mufHXB1f9fOh+QSE3xpqlJ
 WYx5Z/nP5IKXlDrESiBQx9tHnGw/nw/872+fGoRDk2wNCV1sWjhjTSLIn6VlXRtRHHmSz7T9o8ZAl
 1kO9GYTo4mF5wnP/w6n8USjaoDgV99+hT7s2y9OkTc5lFKCZOsaOUO7RaasH+X3OACdKu13eCtcwz
 T7PbMxxQ==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVtYn-0067ah-16
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 10:12:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 3A5691A8A9E
 for <barebox@lists.infradead.org>; Mon, 12 Apr 2021 10:12:47 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KNEFTDNA;
 Mon, 12 Apr 2021 10:12:47 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id 057E71A8A9C;
 Mon, 12 Apr 2021 10:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E398B27E035D;
 Mon, 12 Apr 2021 12:12:46 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 0qH3n_KlmYzo; Mon, 12 Apr 2021 12:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 5095A27E0882;
 Mon, 12 Apr 2021 12:12:46 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 5095A27E0882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1618222366;
 bh=KocDzUeVL2gUrRHecNCo/XPu2OPYSFWhMVK1J4QYDmI=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=FBz5pMlPizIkPAtMzLpHeQZGhLqp2TNSPk7QYuZ0LPS/1vNKuthVWpVQPCLEaplpt
 NiUwxb8zj9k2LJkijoJEa+vMcpF9sMsRd58C0g96TXKu/pEa4eRlqaEFFh79Pykg5P
 eXSY5L0iIFxz4ZaGe1VZfn7xHc9dvc3a0zddMLk4=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Gbkw_J2npuMg; Mon, 12 Apr 2021 12:12:46 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 3C35427E035D;
 Mon, 12 Apr 2021 12:12:46 +0200 (CEST)
Date: Mon, 12 Apr 2021 12:12:45 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20210412101245.GB21066@tellis.lin.mbt.kalray.eu>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
 <20210412071651.8769-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412071651.8769-10-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_031249_387773_540F1F30 
X-CRM114-Status: GOOD (  28.13  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/17] test: add basic barebox self-test infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

This looks nice, I can't wait to try it out :]

On Mon, Apr 12, 2021 at 09:16:43AM +0200, Ahmad Fatoum wrote:
> Self tests is code written to run within barebox to exercise
> functionality. They offer flexibility to test specific units of barebox
> instead of the program as a whole. Add a very simple infrastructure
> for registering and executing self-tests. THis is based on the Linux
> kselftest modules. We don't utilize modules for this, however, because
> we only have module support on ARM, but we need a generic solution.
> 
> Selftests can be enabled individually and even tested without shell
> support to allow tests to happen for size-restricted barebox images
> as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Kconfig             |  1 +
>  Makefile            |  2 +-
>  commands/Makefile   |  1 +
>  commands/selftest.c | 88 +++++++++++++++++++++++++++++++++++++++++++++
>  include/bselftest.h | 70 ++++++++++++++++++++++++++++++++++++
>  test/Kconfig        |  8 +++++
>  test/Makefile       |  1 +
>  test/self/Kconfig   | 33 +++++++++++++++++
>  test/self/Makefile  |  3 ++
>  test/self/core.c    | 39 ++++++++++++++++++++
>  10 files changed, 245 insertions(+), 1 deletion(-)
>  create mode 100644 commands/selftest.c
>  create mode 100644 include/bselftest.h
>  create mode 100644 test/Kconfig
>  create mode 100644 test/Makefile
>  create mode 100644 test/self/Kconfig
>  create mode 100644 test/self/Makefile
>  create mode 100644 test/self/core.c
> 
> diff --git a/Kconfig b/Kconfig
> index 29c32463fb43..7c4cf36881b4 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -15,3 +15,4 @@ source "lib/Kconfig"
>  source "crypto/Kconfig"
>  source "firmware/Kconfig"
>  source "scripts/Kconfig"
> +source "test/Kconfig"
> diff --git a/Makefile b/Makefile
> index f6c0c4817046..0a93915cf347 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -581,7 +581,7 @@ endif
>  include $(srctree)/scripts/Makefile.lib
>  
>  # Objects we will link into barebox / subdirs we need to visit
> -common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
> +common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/ test/
>  
>  include $(srctree)/arch/$(SRCARCH)/Makefile
>  
> diff --git a/commands/Makefile b/commands/Makefile
> index 447349fd157d..4b45d266fd56 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -130,5 +130,6 @@ obj-$(CONFIG_CMD_SEED)		+= seed.o
>  obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
>  obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
>  obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
> +obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
>  
>  UBSAN_SANITIZE_ubsan.o := y
> diff --git a/commands/selftest.c b/commands/selftest.c
> new file mode 100644
> index 000000000000..de5d100de04a
> --- /dev/null
> +++ b/commands/selftest.c
> @@ -0,0 +1,88 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#define pr_fmt(fmt) "selftest: " fmt
> +
> +#include <common.h>
> +#include <command.h>
> +#include <getopt.h>
> +#include <bselftest.h>
> +#include <complete.h>
> +
> +static int run_selftest(const char *match, bool list)
> +{
> +	struct selftest *test;
> +	int matches = 0;
> +	int err = 0;
> +
> +	list_for_each_entry(test, &selftests, list) {
> +		if (list) {
> +			printf("%s\n", test->name);
> +			matches++;
> +			continue;
> +		}
> +
> +		if (match && strcmp(test->name, match))
> +			continue;
> +
> +		err |= test->func();
> +		matches++;
> +	}
> +
> +	if (!matches) {
> +		if (match)
> +			printf("No tests matching '%s' found.\n", match);
> +		else
> +			printf("No matching tests found.\n");
> +
> +		return -EINVAL;
What if there is no tests at all: is that an error if no tests were ran?
despit not using a match condition ? 

> +	}
> +
> +	return err;
> +}
> +
snip
> diff --git a/test/self/core.c b/test/self/core.c
> new file mode 100644
> index 000000000000..d8c6e5d271ba
> --- /dev/null
> +++ b/test/self/core.c
> @@ -0,0 +1,39 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#define pr_fmt(fmt) "bselftest: " fmt
> +
> +#include <common.h>
> +#include <bselftest.h>
> +
> +LIST_HEAD(selftests);
> +
> +static int (*old_main)(void);
> +
> +static int run_selftests(void)
> +{
> +	struct selftest *test;
> +	int err = 0;
> +
> +	pr_notice("Configured tests will run now\n");
> +
> +	list_for_each_entry(test, &selftests, list)
> +		err |= test->func();
> +
> +	if (err)
> +		pr_err("Some selftests failed\n");
> +
> +	barebox_main = old_main;
> +	return barebox_main();
> +}
Why not call run_selftests in start_barebox, right before barebox_main ?
Or maybe add a selftest initcall to be run at the very end of initcalls.
So you don't have to save and restore the barebox_main function.

> +
> +static int init_selftests(void)
> +{
> +	if (!IS_ENABLED(CONFIG_SELFTEST_AUTORUN))
> +		return 0;
> +
> +	old_main = barebox_main;
> +	barebox_main = run_selftests;
> +
> +	return 0;
> +}
> +postenvironment_initcall(init_selftests);
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

