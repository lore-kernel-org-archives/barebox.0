Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur6t7-0001qk-Ea
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 13:32:57 +0000
Received: by mail-ea0-f174.google.com with SMTP id o10so6052510eaj.33
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 06:32:35 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1371634395.4111.54.camel@mars>
References: <1371634395.4111.54.camel@mars>
Date: Mon, 24 Jun 2013 15:32:30 +0200
Message-ID: <1372080750.6281.4.camel@mars>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] omap-fb: add driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>, barebox@lists.infradead.org

On Wed, 2013-06-19 at 11:33 +0200, Christoph Fritz wrote:
> This patch adds omap display controller support. Currently only
> OMAP4 DSS is supported.

Any objections here?

These are the changes in the review-process so far:

changes since v2:
        - use dev_request_mem_region_by_name()
changes since v3:
        - remove register struct
        - use uncached screen_base
changes since v4:
        - remove useless dev_add_param()
        - use wait_on_timeout() instead while-deadlock
changes since v5:
        - use dev_dbg() and dev_err(), be less verbose
        - fix coding-style issues
        - add omap4fb_find_display_by_name()
        - add additional read/write macros
changes since v6:
	- split driver into two commits
	- rename driver to "omap-fb"

 Thanks
  -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
