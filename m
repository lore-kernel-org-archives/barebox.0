Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpproxy19.qq.com ([184.105.206.84])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3NgT-0004V2-H0
 for barebox@lists.infradead.org; Thu, 29 Aug 2019 16:54:08 +0000
Received: from router.tkernel.org (unknown [59.35.37.114])
 by esmtp4.qq.com (ESMTP) with SMTP id 0
 for <barebox@lists.infradead.org>; Fri, 30 Aug 2019 00:53:17 +0800 (CST)
Date: Fri, 30 Aug 2019 00:53:17 +0800
From: duhuanpeng <iu87m888m@qq.com>
Message-ID: <20190829165317.GA19424@router.tkernel.org>+DF5503B4F5DBDFE7
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: can't interrupt when printing T T T T T
To: barebox@lists.infradead.org

Hello, I boot my barebox by barebox from tftpserver. I poweroff my
switcher. and barebox began to print
- - - -
Booting entry 'net'
T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T IP 192.168.1.88 is not reachable
- - - -
I try to hit ctrl-c and some other keys. but I can't stop it printing 'T'.
so I added some piece of code to test it

fs/tftp.c
   static int tftp_poll(struct file_priv *priv)
 {
+
+       if(tstc()) {
+               printf("%s", __func__);
+               putchar(getchar());
+       }
+
        if (ctrlc()) {

net/net.c
 
 void net_poll(void)
 {
+       if(tstc()) {
+               printf("%s", __func__);
+               putchar(getchar());
+       }
+


net/eth.c

static int __eth_rx(struct eth_device *edev)
{
	int ret;

+       if(tstc()) {
+               putchar(getchar());
+               printf("|-_-|");
+       }
+
- - - - - - - -
the result:

Booting entry 'net'
T net_pollknet_polljnet_pollknet_polljk|-_-|net_polljT n|-_-|net_pollkj|-_-|net_pollsnet_pollknet_pollfnet_pollanet_polljT |-_-|net_poll|-_-||-_-|net_pollnet_
pollT T T T T net_pollfnet_pollfT net_pollff|-_-|f|-_-|net_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfT f|-_-|net_polldnet_pollfnet_pollsnet_p
olldnet_pollkf|-_-|net_polljnet_pollknet_pollsnet_polljd|-_-|net_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljT net_polljnet_polljnet_polljnet_p
olljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljnet_polljj|-_-|net_polljT T T T T T T T net_pollfnet_po
llfnet_pollfT net_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollfnet_pollff|-_-|T net_pollfnet_polldnet_polldd|-_-|d|-_
-|T T T T T T T T T T T T T T T T T T T IP 192.168.1.88 is not reachable

I found it the routine (tftp_poll) didn't catch the key input.
mostly the input is catched by net_poll().
could anyone help to move the ctrlc() dection into the right place?

duhuanpeng.








_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
