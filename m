Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x242.google.com ([2a00:1450:400c:c05::242])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7RXb-0007mG-Gn
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 14:50:16 +0000
Received: by mail-wi0-f194.google.com with SMTP id en1so327735wid.5
 for <barebox@lists.infradead.org>; Thu, 08 Aug 2013 07:49:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACbe1rvwSV-XvG3nhZ5eWcO_OpBpBn7QgCLMkW+-=5uATjm0+g@mail.gmail.com>
References: <CACbe1rvwSV-XvG3nhZ5eWcO_OpBpBn7QgCLMkW+-=5uATjm0+g@mail.gmail.com>
Date: Thu, 8 Aug 2013 16:49:53 +0200
Message-ID: <CACbe1rugy6di=rnNO6r0_6qLTerFQ4S9mFhabns17wmGuiD9LA@mail.gmail.com>
From: Pawel Suchanecki <pawel.suchanecki@gmail.com>
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
Subject: Re: barebox-2013.07/08.0 works from RAM but fails from NAND (Mini2440)
To: barebox@lists.infradead.org

2013/8/8 Pawel Suchanecki <pawel.suchanecki@gmail.com>:
> Dear list & developers,
>
> My barebox works (I get barebox prompt and can boot from there) when loaded
> to ram by (super)vivi but does not when I flash it to NAND.
>
> Barebox does not output anything to the console. It also fails using
> "friendlyarm_mini2440_defconfig". It behaves the same in 2013.07.0 and
> 2013.08.0.
>
> Please direct me: where can I look for the misconfiguration? What did I do
> wrong?
>
> Thanks,
> Pawel.

Hi again,

I found the thread in which Cristiano already reported such behaviour, namely:
http://article.gmane.org/gmane.comp.boot-loaders.barebox/10142

Seems I am in same situation. Barebox.2013.05.1 starts from NAND.

Thanks,
Pawel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
