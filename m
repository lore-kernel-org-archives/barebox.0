Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH5LF-0003TH-HI
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 07:50:42 +0000
Date: Thu, 7 Jan 2016 08:50:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160107075019.GW13058@pengutronix.de>
References: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
 <1452147455-26524-5-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452147455-26524-5-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 5/6] common/date.c: Fix off-by-one error
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 06, 2016 at 10:17:34PM -0800, Andrey Smirnov wrote:
> As per http://pubs.opengroup.org/onlinepubs/007908775/xsh/time.h.html
> 'tm_wday' is zero indexed with zero representing Sunday, this is also
> corroborated by the code in rtc_time_to_tm() which used 4 to represent
> Thursday.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/date.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

I squashed this into the original commit introducing this bug.

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
