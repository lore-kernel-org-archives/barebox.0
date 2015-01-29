Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGkgk-0004eB-Uq
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 08:42:59 +0000
Date: Thu, 29 Jan 2015 09:42:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129084236.GT12209@pengutronix.de>
References: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
 <1422498476-28986-5-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422498476-28986-5-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH 4/5] kbuild: simplify CLEAN_FILES with pattern "barebox*"
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 11:27:55AM +0900, Masahiro Yamada wrote:
> There is no source file prefixed "barebox" at the top directory.
> Generated files there can be simply cleaned up "barebox*" pattern.
> 
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>

Applied the rest but I'm unsure with this one. I sometimes put some
temporary files into the toplevel barebox directory and I'm probably not
the only one doing this. I usually don't want them to be deleted when
they start with "barebox" (which might not be uncommon during barebox
development).

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
