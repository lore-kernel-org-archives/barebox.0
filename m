Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ9Ht-00071I-Ek
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 05:18:10 +0000
Date: Tue, 31 Mar 2020 07:18:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200331051807.GE27288@pengutronix.de>
References: <20200330143355.652318-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330143355.652318-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] commands: of_property: fix crashes on incorrect number
 of arguments
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Mar 30, 2020 at 04:33:55PM +0200, Ahmad Fatoum wrote:
> of_property needs at least two parameters, the path and the property
> name. If we supply less, we risk crashes, e.g. by running
> of_property -fs /test
> 
> Verify we got at least two parameters.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  commands/of_property.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)

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
