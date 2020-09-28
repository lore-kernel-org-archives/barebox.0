Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMoWO-0003uP-Jw
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 08:28:33 +0000
Date: Mon, 28 Sep 2020 10:28:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200928082831.GE11648@pengutronix.de>
References: <20200921071135.561256-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200921071135.561256-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] common: misc: support strerror(err) for all err <=
 MAX_ERRNO
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Sep 21, 2020 at 09:11:35AM +0200, Ahmad Fatoum wrote:
> We have a _LAST_ERRNO of 3 decimal digits. strerror(_LAST_ERRNO) is ok,
> but it's still possible that some code passes a non-error code int,
> which will overflow the static buffer. Play it safe and bump up the
> buffer size to at least 11 characters. This is enough to represent
> all integers, with only 7 characters more static storage.
> 
> This way strerror(some_int_passed_by_mistake) will not invoke UB.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> Detected by ASAN on sandbox a while ago. The place which passed the
> non-errno int needs probably fixing as well, but I need to find it again
> first..
> ---
>  common/misc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

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
