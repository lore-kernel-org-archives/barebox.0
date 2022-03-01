Delivery-date: Tue, 01 Mar 2022 10:20:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOygH-00EE2f-5t
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 10:20:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOygF-0003Dp-HD
	for lore@pengutronix.de; Tue, 01 Mar 2022 10:20:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tL1jhrRUSsPZTpzSZntbbxn+eOcVejPc9q9VpYqPSw4=; b=h3eZXSSUU/i7CB9cjZ5szVdqO/
	GrFEoZ7fb4MatJ3X7GqJQgoZ1+6yd3DLmnb7PmdT4/ueG92T+m/fbnycbu30eeeV61uI4Jpo6rbTV
	1cryugiW3EHM2ehQL+AdYYuIZqkwkl0dwjIrl130t9VciD+rPEKDKC0VzbW/dApuniyDgijcGYwgY
	KV/KGizITr/xhOrt8gM0TI90AAG5TBc2dqBOqGy0QCGjMJHUFv61KJPH1EJJ8ceiFetf2lmhlpkBt
	oHllD9znpD6yvRKpTGn5BYdTmPfcPjzyfjXKkfRlAufiCWclHj54XpQvQ6hGYOyP8PLAyiWUzOuIi
	hhxAvw3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOyex-00FoTn-KC; Tue, 01 Mar 2022 09:19:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOyer-00FoS2-Jd
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 09:19:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOyeq-0002y3-5h; Tue, 01 Mar 2022 10:19:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOyep-00074w-HT; Tue, 01 Mar 2022 10:18:59 +0100
Date: Tue, 1 Mar 2022 10:18:59 +0100
To: Christian Melki <christian.melki@t2data.com>
Cc: barebox@lists.infradead.org, masahiroy@kernel.org
Message-ID: <20220301091859.GS19585@pengutronix.de>
References: <20220223193025.1907423-1-christian.melki@t2data.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220223193025.1907423-1-christian.melki@t2data.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:12:22 up 80 days, 17:57, 85 users,  load average: 0.21, 0.27, 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_011901_671113_3F449A1C 
X-CRM114-Status: GOOD (  33.23  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Re-enable warning for non-existent symbols.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Wed, Feb 23, 2022 at 08:30:25PM +0100, Christian Melki wrote:
> From the kernel:
> Commit f072181e6403b0fe2e2aa800a005497b748fd284 ("kconfig: drop the
> ""trying to assign nonexistent symbol" warning").
> 
> Rationale behind re-enabling this is that as an embedded developer,
> I often find myself doing oldconfigs during upgrades. Symbols
> do change names and are sometimes lost silently, with the occasional
> headache. My need for these warnings are probably different than
> the need of the typical kernel developer.
> 
> (Un)fortunatly, a lot of projects directly inherit the kernel kconfig/lxdialog
> variant without much thought into their own symbols and practices.
> The kernel itself has some 1k+ non-existent symbols in various
> defconfigs as developers are not nagged about their cleanliness.
> 
> This warning could do well in various projects. Barebox, ptxdist,
> U-boot, busybox etc.

I am still unsure about this one. First of all Masahiro frequently
syncs the kconfig files with recent Linux, so I don't know how long
this change will last. Then from time to time we regenerate defconfigs
which means the warnings will just vanish without further notice.

Maybe you just have to do a

make x_defconfig; make savedefconfig; mv defconfig arch/y/configs/x_defconfig; git diff

from time to time.

Sascha

> 
> Signed-off-by: Christian Melki <christian.melki@t2data.com>
> ---
>  scripts/kconfig/confdata.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
> index cf72680cd..d189e088d 100644
> --- a/scripts/kconfig/confdata.c
> +++ b/scripts/kconfig/confdata.c
> @@ -439,6 +439,7 @@ load:
>  			if (def == S_DEF_USER) {
>  				sym = sym_find(line + 2 + strlen(CONFIG_));
>  				if (!sym) {
> +					conf_warning("trying to assign nonexistent symbol %s", line + 2 + strlen(CONFIG_));
>  					conf_set_changed(true);
>  					continue;
>  				}
> @@ -481,8 +482,10 @@ load:
>  					 * include/config/FOO must be touched.
>  					 */
>  					conf_touch_dep(line + strlen(CONFIG_));
> -				else
> +				else {
>  					conf_set_changed(true);
> +					conf_warning("trying to assign nonexistent symbol %s", line + strlen(CONFIG_));
> +				}
>  				continue;
>  			}
>  
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

