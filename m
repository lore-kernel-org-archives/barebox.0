Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyfx-0005eR-Cz
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:45:08 +0000
Date: Fri, 26 Oct 2018 11:44:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181026094452.lunv5opg26u56b6j@pengutronix.de>
References: <20181023131531.22804-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181023131531.22804-1-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH] net: dhcp: fix option 54
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 23, 2018 at 03:15:31PM +0200, Marcin Niestroj wrote:
> Option 54 (Server Identifier) is something different than
> SIADDR (Server IP address). Currently they are used
> interchangeably. This causes DHCPNAK with DHCP servers that
> have configured different values for each field.
> 
> Create new 'dhcp_serverip' field in 'struct dhcp_result', so we treat
> option 54 separately. This fixes DHCP requests for servers that send
> two different values for SIADDR and option 54 in DHCPOFFER.
> 
> Fixes: 528298b702a0 ("net: dhcp: rework")
> Fixes: e18cc5b7e9ce ("DHCP: fix option 54 passing")
> Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
> ---
>  include/dhcp.h | 1 +
>  net/dhcp.c     | 6 +++---
>  2 files changed, 4 insertions(+), 3 deletions(-)

Tested here, still works for me. Other than that I must say I do not
fully overview the impact of this patch, so I just hope for the best ;)

Applied, thanks

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
