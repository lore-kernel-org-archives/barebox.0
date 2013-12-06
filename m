Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vosjy-0001Px-2l
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 10:34:35 +0000
Date: Fri, 6 Dec 2013 11:34:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131206103409.GC24559@pengutronix.de>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
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
Subject: Re: How to debug Ethernet connectivity
To: Atilla Filiz <atilla.filiz@gmail.com>
Cc: barebox@lists.infradead.org

Hi Atilla,

On Fri, Dec 06, 2013 at 11:21:25AM +0100, Atilla Filiz wrote:
> Hello
> 
> I have been tasked to debug a port of Barebox to our custom board. It
> has one Ethernet interface. All network related(dhcp, ping ...) tasks
> fail with "Network is down" error, although the link lights on my
> switch are on. So I did this on 2013.06:
> 
> --- barebox-2013.06.0.orig/net/
> eth.c    2013-06-02 12:24:06.000000000 +0200
> +++ barebox-2013.06.0/net/eth.c    2013-12-03 16:52:40.428089000 +0100
> @@ -142,12 +142,16 @@
> 
>      if (force || is_timeout(last_link_check, 5 * SECOND) ||
>              !eth_current->phydev->link) {
>          ret = phy_update_status(eth_current->phydev);
>          if (ret)
>              return ret;
>          last_link_check = get_time_ns();
>      }
> 
> +    return 0;
>      return eth_current->phydev->link ? 0 : -ENETDOWN;
>  }
> 
> This bypasses link detection and assumes the link is always up. This
> way, I got dhcp, ping and tftp working.
> 
> How can I debug this further to hunt down the Ethernet problem?
> Something seems wrong with my PHY settings. This is an iMX27 based
> board. Which files/functions/structures do I need to check?

Most likely the phy_addr field in fec_platform_data is wrong.

It could also be that the pinmux for the MDIO lines to the phy
is misconfigured.

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
