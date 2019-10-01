Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out-2.mail.amis.net ([212.18.32.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDMI-0002JL-Gu
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 08:18:13 +0000
Received: from in-3.mail.amis.net (in-3.mail.amis.net [212.18.32.22])
 by out-2.mail.amis.net (Postfix) with ESMTP id C414280E54
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from in-3.mail.amis.net (localhost [127.0.0.1])
 by in-3.mail.amis.net (Postfix) with ESMTP id A9279C947B
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from in-3.mail.amis.net ([127.0.0.1])
 by in-3.mail.amis.net (in-3.mail.amis.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id tGImm0JopL-W for <barebox@lists.infradead.org>;
 Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from smtp2.amis.net (smtp2.amis.net [212.18.32.44])
 by in-3.mail.amis.net (Postfix) with ESMTP id 322F1C9473
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:03 +0200 (CEST)
Received: from localhost.localdomain (89-212-21-243.static.t-2.net
 [89.212.21.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp2.amis.net (Postfix) with ESMTPSA id 0EF977FCA0
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 10:18:00 +0200 (CEST)
From: Primoz Fiser <primoz.fiser@norik.com>
Date: Tue,  1 Oct 2019 10:17:57 +0200
Message-Id: <20191001081800.19128-1-primoz.fiser@norik.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] usb: Reduce USB scanning time
To: barebox@lists.infradead.org

Hello, 

Recently we came across an embedded platform which has a very complex           
USB infrastructure. In total, 17 USB devices are connected over various         
USB hubs. Initial USB scanning on this platform takes an incredible             
amounts of time ~22 seconds. This huge delay is unacceptable if we are          
required to boot from USB and need to perform scanning on each boot-up.         
                                                                                
However this huge USB scanning delay is only apparent in Barebox as             
subsequent Linux drivers don't take as much time to enumerate the bus.          
Thus we decided to investigate and try to optimize USB scanning time as         
much as possible without loosing any functionality & retain stability.          
                                                                                
Code analysis of USB hub driver revealed many calls to mdelay(). Some of         
them unnecessary and some even longer than 1 second per port, statically           
placed without any checks if required at all. These delays significantly           
degrade USB scanning performance and must be reworked.                             
                                                                                   
Investigation lead us also to U-boot which was already tested by us on             
the same i.MX6 platform and didn't show such poor USB performance. We              
found out U-boot already implements quasi parallel USB scanning                    
strategy and thus we decided to port this functionality to Barebox.                
                                                                                   
We took great deal of ideas and code from U-boot patch series by Stefan            
Roese: https://lists.denx.de/pipermail/u-boot/2016-March/248493.html               
                                                                                   
Although we didn't achieve the same level of delay reduction as reported           
by Mr. Roese (28.4 to 1.8 seconds), USB scanning in our case now takes             
around 4.5 seconds (21.7 to 4.5 seconds) which is a significant                    
improvement!                                                                       
                                                                                   
We could take this patch series a step further by also porting patch 3/4           
"usb: Don't reset the USB hub a 2nd time" from U-boot. But according to            
comment in Barebox code: "This is a Windows scheme of initialization               
sequence, with double reset of the device (Linux uses the same                     
sequence)" we wanted to be safe and left the double device reset                   
functionality intact for the sake of retaining stability over speed                
performance.

All further details on changes are described in each patch description.

Best regards,
Primoz Fiser

Primoz Fiser (3):
  usb: hub_port_reset(): Speedup hub reset handling
  usb: usb_hub_port_connect_change(): Remove unnecessary delays
  usb: Change power-on / scanning timeout handling

 drivers/usb/core/hub.c | 184 +++++++++++++++++++++++++++++++++++------
 include/usb/usb.h      |   3 +
 2 files changed, 162 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
