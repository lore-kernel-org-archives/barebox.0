Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gateway.hbm.com ([213.157.30.2] helo=hbmntx5.hbm.com)
	by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QNOUN-00065Y-1Y
	for barebox@lists.infradead.org; Fri, 20 May 2011 12:07:32 +0000
Content-Class: urn:content-classes:message
From: "Tim Sander" <tim.sander@hbm.com>
Date: Fri, 20 May 2011 14:07:08 +0200
MIME-Version: 1.0
Message-ID: <201105201407.08429.tim.sander@hbm.com>
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
Subject: GPIO Support on pcm043
To: barebox@lists.infradead.org

Hi

I just tried (for i in `seq 0 96`)
gpio_set_direction $i 1
and 
gpio_set_direction $i 0

on a barebox for pcm043 with gpio support compiled in.
But no LED was lighting up. 

Is there some obvious error on my side or is there no gpio
support for pcm043? At least there seems to be support for
the gpio ports on imx?

Any hints?
Thanks
Tim

Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germany | www.hbm.com 

Registered as GmbH (German limited liability corporation) in the commercial register at the local court of Darmstadt, HRB 1147  
Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the board: James Charles Webster

Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister des Amtsgerichts Darmstadt unter HRB 1147 
Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst | Aufsichtsratsvorsitzender: James Charles Webster

The information in this email is confidential. It is intended solely for the addressee. If you are not the intended recipient, please let me know and delete this email.

Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich fur den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
