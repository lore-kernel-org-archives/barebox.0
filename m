Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-f172.google.com ([209.85.213.172])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhkQo-0006op-6O
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 20:26:22 +0000
Received: by igbkq10 with SMTP id kq10so3406603igb.0
 for <barebox@lists.infradead.org>; Thu, 01 Oct 2015 13:26:00 -0700 (PDT)
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com.
 [209.85.223.179])
 by smtp.gmail.com with ESMTPSA id j9sm2061949igx.3.2015.10.01.13.25.59
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Oct 2015 13:25:59 -0700 (PDT)
From: Geoff Cleary <gcleary1@sightlogix.com>
Received: by iofh134 with SMTP id h134so99340992iof.0
 for <barebox@lists.infradead.org>; Thu, 01 Oct 2015 13:25:59 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 1 Oct 2015 16:25:59 -0400
Message-ID: <CAK+b6Lsn6xLG30xK5-9XVLaAGDyDYiPdkfSh-92HcO5fONm_HQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: gcleary@sightlogix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: booting kernel from ubi volume in nand flash
To: barebox@lists.infradead.org

Hi,

I cannot find documentation regrading scrubbing of ubi volumes in barebox.
Is this feature implemented in barebox?

In the case where our kernel is stored in a ubi volume, should we expect
the possibility that barebox may try to "scrub" (move) a block during boot
of the kernel, if that block required ECC correction?

Regards
Geoff Cleary

--

 Geoff Cleary

 Principal Software Engineer
 http://www.sightlogix.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
