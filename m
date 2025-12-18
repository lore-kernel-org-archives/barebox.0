Delivery-date: Thu, 18 Dec 2025 09:05:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW90V-00CkvD-3B
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 09:05:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW90V-0001rQ-FD
	for lore@pengutronix.de; Thu, 18 Dec 2025 09:05:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OIkKCbP2mFekhxhvuh2Z2PBCHD+MVGUtw7Uq5cFBkNk=; b=FVKVaiwvwogCKOh66GbjNXs9bZ
	4B48oC88EWBdzF3iKpCxKu0SXUzFUBXch+0GUVsNmmqqFm9hfGPPhvXDELDsGDzbeck4Il7UV4gXJ
	/tlfFyhbLVjRqIZKqgKyWPMuw957XZeT/7G1QkKXSr1ZyftsWZDXDYE4pL+KZDq5AHvNXFRjA4tgV
	P9TseNxiQ4EdS1ItLnUNUnQBlmXDRWb7tHNvI1R7NiF6FVP7zYS7KrSYYjXccETsRfRW9gLFBe9bC
	P2rZI/8hZKPzIPbWfWD/LlheI3p3vqCbuP8LkA9s+iE2WkbTf24CK7oynezvLbS5E6gtd/pL/xjMK
	SziHWMMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW8zz-000000080Cg-06T5;
	Thu, 18 Dec 2025 08:04:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW8zv-000000080Al-2brE
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 08:04:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vW8zt-0001mE-VP; Thu, 18 Dec 2025 09:04:29 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vW8zt-006FKL-2W;
	Thu, 18 Dec 2025 09:04:29 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vW8zt-00EWpo-2B;
	Thu, 18 Dec 2025 09:04:29 +0100
Date: Thu, 18 Dec 2025 09:04:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aUO1jd7LuiAfKDNG@pengutronix.de>
References: <20251217103547.4046898-1-a.fatoum@pengutronix.de>
 <efca75a6-a218-48ee-8471-2e2967e86de5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <efca75a6-a218-48ee-8471-2e2967e86de5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_000431_684476_DE3600EA 
X-CRM114-Status: GOOD (  17.55  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: add helper for generating Origin-URL references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 17, 2025 at 11:59:43AM +0100, Jonas Rebmann wrote:
> > +# Optional second argument to allow e.g. !git origin-url $remote_file % im vim
> > +# In cases where local file has different extension then the original
> > +dstbasename="$(basename ${2:-$1})"
> > +
> > +[ -e "$1" ] || err "File not found"
> > +
> > +filepath="$(realpath "$1")"
> > +
> > +repo_root="$(git -C "$(dirname "$filepath")" rev-parse --show-toplevel 2>/dev/null \
> > +    || err "Not inside a Git repository: $filepath")"
> > +
> > +rel_path="$(realpath --relative-to="$repo_root" "$filepath")"
> > +
> > +# newest commit that touched this file
> > +file_commit="$(git -C "$repo_root" log -n1 --format=%H -- "$rel_path")"
> 
> So the idea is that the Origin-URL is generated for the commit to which
> <path-to-file> is checked out at the time? Maybe you could state that
> more clearly e.g. in the top of the script or in the usage message.
> 
> We don't want people to add Origin-URLs referencing just any commit.

Ah, should have read that before writing a mail ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


