Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZxXu-0007gY-91
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 13:39:55 +0000
Date: Wed, 27 Nov 2019 14:39:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191127133952.hysi4kzwjhhogh2s@pengutronix.de>
References: <20191126105659.9555-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126105659.9555-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] pstore: fix build by re-resolving botched merge
 conflict
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 26, 2019 at 11:56:59AM +0100, Ahmad Fatoum wrote:
> 297ac7288 ("pstore: Only capture log messages") removed the pstore console.
> v3 of the eventually merged 75a74b5c ("console: fix out-of-bounds read
> in dputc(/dev/*, ...)") reinstated part of this code, which broke the
> pstore build because the now removed bufsize member had a user
> reintroduced in the patch.
> 
> Fix this by reverting the offending patch's changes to the pstore code.
> It wasn't applicable to begin with.
> 
> Fixes: 75a74b5c ("console: fix out-of-bounds read in dputc(/dev/*, ...)")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Hello Sascha,
> 
> I broke pstore in v2019.10.0 because of the botched merge conflict
> resolve described above. Can this patch be applied to master?

Just did that.

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
