Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PuOca-0001Yq-Ec
	for barebox@lists.infradead.org; Tue, 01 Mar 2011 12:24:09 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Tue, 1 Mar 2011 13:24:05 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E60@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: UART
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

(i.MX27 board)

When I start a tftp transfer from the Barebox command prompt (or a ping), I (almost) always first get an error message on the console output :
error frame: 0xa7b058f0 0x00000882
After that, the tftp seems to continue as expected. File gets transferred and looks ok.
As far as I can see (in fec_imx.c), the error indicates a FIFO overrun. Seems to make no sense at the beginning of a transfer...

Any idea if it's normal that this message appears at the beginning of a network related command ?
I don't think it has any influence on the following communication. However, sometimes I notice some delay between executing the command and the real  start of the communication. Maybe there's a kind of timeout to recover from that error ?


Filip


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
