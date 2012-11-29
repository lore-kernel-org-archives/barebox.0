Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ia0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TeCvd-0008Mh-Tf
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 22:49:58 +0000
Received: by mail-ia0-f177.google.com with SMTP id u21so10827822ial.36
 for <barebox@lists.infradead.org>; Thu, 29 Nov 2012 14:49:56 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 29 Nov 2012 23:49:56 +0100
Message-ID: <CAAfyv341yF=MSJg+CWpJSRy1deOsaz3DHH1=WKo8VLeyYKUWjQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Subject: loading uImage from FAT partition
To: barebox@lists.infradead.org

Hi,

I'm trying to use barebox on pandaboard and change default env config to boot
from SD card (as this is mostly what user want).

I'm curious how to add boot support from SD card properly.
I'm using currently command: bootm /boot/uImage in
boot script. Is this approach correct or is there some simple way how
to make it?

Thanks,

mbe

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
