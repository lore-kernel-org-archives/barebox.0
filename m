Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x229.google.com ([2a00:1450:400c:c09::229])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baBpQ-0000Wt-Uk
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 01:09:05 +0000
Received: by mail-wm0-x229.google.com with SMTP id i5so11092869wmg.0
 for <barebox@lists.infradead.org>; Wed, 17 Aug 2016 18:08:44 -0700 (PDT)
Received: from [10.10.10.11] (77.119.129.209.wireless.dyn.drei.com.
 [77.119.129.209])
 by smtp.gmail.com with ESMTPSA id d64sm22755wmc.22.2016.08.17.18.08.41
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Aug 2016 18:08:42 -0700 (PDT)
From: Peter Kardos <kardos.peter.sk@gmail.com>
Message-ID: <7f89efef-2805-34d8-db7d-f3bc53d8e21a@gmail.com>
Date: Thu, 18 Aug 2016 03:08:36 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AT91RM9200 hang in atmel_serial_putc
To: barebox@lists.infradead.org

Greetings,

I'm looking for a AT91 specialist that could help me debug barebox v2016.08.

I have a custom board running AT91RM9200 that came with a really old 
custom u-boot (v1.1.4, no ubifs support)...

The first bootloader I've ported (barebox v2015.07, using AT91RM9200ek 
as template) almost works; I'm having trouble getting networking (ping, 
dhcp) working with Micrel KSZ8721 phy. But it boots, works with the 
Flash, etc...
With hopes, that this (networking issue) is resolved with the latest 
barebox release (using the same patchset and config) I've found (??) a 
another issue.

At first it seemed the board just does not boot, after having a look 
with a j-link it seems the board "hangs" in atmel_serial_putc().
I've tried to look at the AT91RM9200 init (lowlevel, peripherals, 
driver) and could not find any significant change (rewrite, define 
changes, etc)...

Any help, ideas, even flame is welcome.

Thanks in advance.
Cheers, Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
