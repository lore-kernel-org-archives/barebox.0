Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fy00Z-0006sK-6F
 for barebox@lists.infradead.org; Thu, 06 Sep 2018 19:32:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id w11-v6so12602993wrc.5
 for <barebox@lists.infradead.org>; Thu, 06 Sep 2018 12:31:51 -0700 (PDT)
Received: from [10.0.0.6] (194-166-158-155.hdsl.highway.telekom.at.
 [194.166.158.155]) by smtp.googlemail.com with ESMTPSA id
 v21-v6sm3697135wrd.4.2018.09.06.12.31.49
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Sep 2018 12:31:49 -0700 (PDT)
From: Martin Ortbauer <mortbauer@gmail.com>
Message-ID: <a8ae5b24-1bdb-637e-a346-3f803b26504f@gmail.com>
Date: Thu, 6 Sep 2018 21:31:48 +0200
MIME-Version: 1.0
Content-Language: de-AT
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
Subject: Re: Re: [PATCH 09/10] ARM: rpi: add raspberry pi 3 support
To: barebox@lists.infradead.org

Dear Lucas

I'm a bit confused about the barebox support for the rapsberrypi 3 series.

I found the patch [1] and also the documentation [2] suggests support 
for raspberrry 3, however it only creates an image for the pi1 and pi2.

I also checked out the git logs and couldn't find any source of the 
patch, do you know about the state, and why it didn't find its way?

Many Thanks

Martin Ortbauer


[1] http://lists.infradead.org/pipermail/barebox/2018-January/032019.html
[2] https://www.barebox.org/doc/latest/boards/bcm2835.html

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
