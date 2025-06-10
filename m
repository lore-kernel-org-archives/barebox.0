Delivery-date: Tue, 10 Jun 2025 14:09:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOxmz-005n0m-29
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 14:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOxmz-0004tD-2F
	for lore@pengutronix.de; Tue, 10 Jun 2025 14:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwfvxe0sK1SqWaM9rcghPXqpCB+crU18bwJaNVOdyNI=; b=PNlB8vTlTNQInKOpxJYuhwvzbf
	v1pKmvLl1P5+9q/upWnHosiXsQeptowBfj/kvxEypbrhHd8wCASpcvAwAhvRmvKsWKXhwFPetGU4/
	ruHtOO32hCxrrR/432BCRAMwsD7SE3fW5NodTwXhQ74x/Z6/VHQn0nfT+tzOBbxz73AFMVCoj6G/x
	ofLcY2nbxCe6XXWXdRKkgmf/BPYmvwg2aatJ8ELBfVmER/9L3HA/13I5zVu8VAQMXsWgzpXWqYN/F
	IzMZbbNODTTEa3pPfpa05msq55N1E+T8fq6gnOz1/Dtg1FCwHIHmRRFNYtvGNsCThzNBPyEt6eSc9
	MccjDp1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOxmi-00000006iok-1jwC;
	Tue, 10 Jun 2025 12:08:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOw43-00000006Thq-0SuJ
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 10:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uOw41-0006UU-Kn; Tue, 10 Jun 2025 12:18:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOw41-002kz7-1T;
	Tue, 10 Jun 2025 12:18:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOw41-004nNh-15;
	Tue, 10 Jun 2025 12:18:41 +0200
Date: Tue, 10 Jun 2025 12:18:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aEgGgVGRrprdIWjz@pengutronix.de>
References: <20250605194401.1841679-1-a.fatoum@barebox.org>
 <20250605194401.1841679-3-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250605194401.1841679-3-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_031843_146633_1F5309F2 
X-CRM114-Status: GOOD (  23.11  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/3] commands: iomem: add support for printing
 type/attributes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 05, 2025 at 09:44:01PM +0200, Ahmad Fatoum wrote:
> To make it easier to verify attributes, let's teach iomem to print the
> newly added information. This intentionally only operates on the
> resources, the mmuinfo command is what should print information actually
> in the page tables.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
> v2 -> v3:
>   - new commit
> ---
>  commands/iomemport.c   | 55 +++++++++++++++++++++++++++++++----
>  common/resource.c      | 66 ++++++++++++++++++++++++++++++++++++++++++
>  include/linux/ioport.h |  3 ++
>  3 files changed, 119 insertions(+), 5 deletions(-)
> 
> diff --git a/commands/iomemport.c b/commands/iomemport.c
> index bbe41f571b48..04d7b100a755 100644
> --- a/commands/iomemport.c
> +++ b/commands/iomemport.c
> @@ -6,13 +6,23 @@
>  #include <asm/io.h>
>  #include <common.h>
>  #include <command.h>
> +#include <getopt.h>
> +#include <range.h>
>  
> -static void __print_resources(struct resource *res, int indent)
> +static void __print_resources(struct resource *res, int indent,
> +			      ulong *addr, bool verbose)
>  {
> +	char buf[64];
>  	struct resource *r;
>  	resource_size_t size = resource_size(res);
>  	int i;
>  
> +	if (addr && !region_overlap_end(*addr, *addr, res->start, res->end))
> +		return;
> +
> +	if (verbose)
> +		printf("%-58s", resource_typeattr_format(buf, sizeof(buf), res) ?: "");
> +
>  	for (i = 0; i < indent; i++)
>  		printf("  ");
>  
> @@ -22,26 +32,61 @@ static void __print_resources(struct resource *res, int indent)
>  			res->name);
>  
>  	list_for_each_entry(r, &res->children, sibling) {
> -		__print_resources(r, indent + 1);
> +		__print_resources(r, indent + 1, addr, verbose);
>  	}
> +
>  }
>  
> -static void print_resources(struct resource *res)
> +static void print_resources(struct resource *res, ulong *addr, bool verbose)
>  {

Dropped this patch:

commands/iomemport.c: In function 'do_ioport':
commands/iomemport.c:95:9: error: too few arguments to function 'print_resources'

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


