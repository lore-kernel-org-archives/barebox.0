Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLDFF-0004Mq-8l
 for barebox@lists.infradead.org; Wed, 05 Mar 2014 14:56:29 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Wed, 5 Mar 2014 15:56:00 +0100
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D578@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D2DF@SRV-VS06.TELEVIC.COM>
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D2DF@SRV-VS06.TELEVIC.COM>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: at91sam9260-ek ...
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message----
> From: barebox [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> Vanhauwaert Wouter
> Sent: woensdag 5 maart 2014 10:55
> To: barebox@lists.infradead.org
> Subject: at91sam9260-ek ...
> 
> Hello,
> 
> Is the setup for a at91sam9260-ek still functioning?
> I have troubles with my nand flash. At first it boots and writes BBT-tables.
> However, next boot, it won't read the BBT, and has errors with the magic on the
> environment variables.
> Erase /dev/env0 and saveenv do not make a difference.
> Nandtest does not give me errors...
> 
> I'm just using the latest barebox 2014.2 and loading it on a at91sam9260-ek
> through usb (sam-ba). I'm just using the plain at91sam9260ek_defconfig
> 

loadenv /dev/env0 
Gives me: 
Envfs: wrong magic on /dev/env0
Loadenv: I/O error

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
