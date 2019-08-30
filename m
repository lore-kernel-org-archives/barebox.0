Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cft-0005Pb-Dc
 for barebox@lists.infradead.org; Fri, 30 Aug 2019 08:54:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1i3cfr-0000Hk-FN
 for barebox@lists.infradead.org; Fri, 30 Aug 2019 10:54:27 +0200
References: <20190829165317.GA19424@router.tkernel.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7945561d-1a56-410f-1b7d-856cc003efde@pengutronix.de>
Date: Fri, 30 Aug 2019 10:54:27 +0200
MIME-Version: 1.0
In-Reply-To: <20190829165317.GA19424@router.tkernel.org>
Content-Language: en-US
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
Subject: Re: can't interrupt when printing T T T T T
To: barebox@lists.infradead.org

Hello Duhuan (?),

On 8/29/19 6:53 PM, duhuanpeng wrote:
> Hello, I boot my barebox by barebox from tftpserver. I poweroff my
> switcher. and barebox began to print
> - - - -
> Booting entry 'net'
> T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T IP 192.168.1.88 is not reachable
> - - - -
> I try to hit ctrl-c and some other keys. but I can't stop it printing 'T'.
> so I added some piece of code to test it
> 
> fs/tftp.c
>    static int tftp_poll(struct file_priv *priv)
>  {
> +
> +       if(tstc()) {
> +               printf("%s", __func__);
> +               putchar(getchar());
> +       }
> +
>         if (ctrlc()) {
> 
> net/net.c
>  
>  void net_poll(void)
>  {
> +       if(tstc()) {
> +               printf("%s", __func__);
> +               putchar(getchar());
> +       }
> +
> 
> 
> net/eth.c
> 
> static int __eth_rx(struct eth_device *edev)
> {
> 	int ret;
> 
> +       if(tstc()) {
> +               putchar(getchar());
> +               printf("|-_-|");
> +       }
> +
> - - - - - - - -
> the result:
> 
> Booting entry 'net'
> T net_pollknet_polljnet_pollknet_polljk|-_-|net_polljT n|-_-|net_pollkj|-_-|net_pollsnet_pollknet_pollfnet_pollanet_polljT |-_-|net_poll|-_-||-_-|net_pollnet_
> pollT T T T T net_pollfnet_pollfT net_pollff|-_-|f|-_-|net_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfT f|-_-|net_polldnet_pollfnet_pollsnet_p
> olldnet_pollkf|-_-|net_polljnet_pollknet_pollsnet_polljd|-_-|net_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljT net_polljnet_polljnet_polljnet_p
> olljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljj|-_-|net_polljT T T T T T T T net_pollfnet_po
> llfnet_pollfT net_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollff|-_-|T net_pollfnet_polldnet_polldd|-_-|d|-_
> -|T T T T T T T T T T T T T T T T T T T IP 192.168.1.88 is not reachable
> 
> I found it the routine (tftp_poll) didn't catch the key input.
> mostly the input is catched by net_poll().
> could anyone help to move the ctrlc() dection into the right place?

"startup: allow ctrl+c abort during boot sequence" on the barebox next branch
should fix this for you.

Cheers
Ahmad

> 
> duhuanpeng.
> 
> 
> 
> 
> 
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
