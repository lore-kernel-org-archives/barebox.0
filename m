Delivery-date: Fri, 01 Oct 2021 14:54:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWI36-0000Ez-KA
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 14:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWI35-0000OA-Jl
	for lore@pengutronix.de; Fri, 01 Oct 2021 14:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zq1WLs4G2lB+Z004eC4WbHOIzGXV0R8RpLh81lBojRo=; b=Gh0leQVdlR+tPCbVZiwUpQEnKr
	MvE/xYfhgrr2OWFFSH7wLw8BbMDvVsnPElWxrLM3PkzFl2GaNtQsCZmeO5ddBKRXIUMOX/ipshJdz
	6N9r6nSgfz+P6RCd+h5RrktDddw5Uby7x9Ay08sHEngY89MjXtOrERnM5o3CqPm/diMR5minbQT9b
	Xio6FBfCtFNlYCAqkHNVUYrNqCYXSP7dV6TBLnL4OG4C61o4UX1HlGI4FAYNcP7t5MkAphLnCyPZg
	bguwHoOACGx5lrGrAItc6bIfLcJkJfU97sKhwtWjxBqwDXsWpxfQkVYE/u8yuACz9aHzcPrrXvb9/
	34/cAg0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWI1V-000Mv9-Fu; Fri, 01 Oct 2021 12:52:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWI1Q-000Mup-GE
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 12:52:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWI1O-0000C6-4V; Fri, 01 Oct 2021 14:52:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWI1N-0003Lz-Ke; Fri, 01 Oct 2021 14:52:13 +0200
Date: Fri, 1 Oct 2021 14:52:13 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
Message-ID: <20211001125213.GT24834@pengutronix.de>
References: <20210922181336.1350460-1-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922181336.1350460-1-trent.piepho@igorinstitute.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:45:10 up 225 days, 16:09, 137 users,  load average: 0.10, 0.17,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_055216_571015_DF02C2EA 
X-CRM114-Status: GOOD (  32.89  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/1] kbuild: dtc: Allow adding device tree fragments
 via config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Trent,

On Wed, Sep 22, 2021 at 11:13:36AM -0700, Trent Piepho wrote:
> This introduces a config variable that allows adding additional fragments
> to the Barebox device tree(s).
> 
> Example uses are adjusting the flash partition layout, adding barebox
> state variables, or adding an I2C device.  These can be now be done with
> build configuration only, without needing to patch the existing dts
> files in the Barebox source.
> 
> The advantage is greater when an external build system, such as Yocto or
> Buildroot, is being used to build Barebox.  The build system can drop in
> a dts fragment to partition flash and build from unaltered Barebox
> source.  This avoids the need for cumbersome maintenance of patch files
> to modify Barebox's source for each flash partition layout.
> 
> Preprocessing the dts file gains another layer, where a generated dts
> source consisting of an include directive for the original dts source is
> followed by more includes for each fragment.  This is piped to the
> existing preprocessor call on stdin to avoid another temporary file.
> cpp/dtc will correctly identify errors in the source files they occur
> in.  The -MT option is used so the cpp auto-dependencies reference the
> original dts source and not the generated code passed on stdin.
> 
> A preprocessor macro named after the base dts file, e.g. foo-bar.dts
> will define foo_bar_dts, will be defined so that the fragments can
> possibly operate differently based on which image's dts is being built.
> 
> Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
> ---
> Changes from v1:
>   - Remove 2nd config variable for in-tree fragments.
>   - Add macro to preproccessed dts

I tested this myself and it works as expected. Applied with a little
change

> +config EXTERNAL_DTS_FRAGMENTS
> +	string "external dts file fragments"
> +	depends on OFTREE
> +	help
> +	  List of dts fragment files that will be appended to Barebox's device
> +	  tree(s) source when building the dtb file(s).  If multiple files are
> +	  listed, they will be appended in order.  Relative filenames will use
> +	  the dtc include search path.
> +
> +	  A preprocessor macro based on the name of the main dts will be
> +	  defined, which allows the dts fragments to based on which image of a
> +	  multi image build they are being used in.

Changed this to:

	  A preprocessor macro based on the name of the main dts will be
	  defined, which allows the dts fragments to based on which image of a
	  multi image build they are being used in. Given the dts filename
	  used for a board is "foo-board.dts" the external dts usage can be
	  limited to that board with

	  #ifdef foo_board_dts
	  ...
	  #endif

To make that point a little more clear.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

