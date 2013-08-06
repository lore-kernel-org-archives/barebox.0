Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6opp-0002TV-ES
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 21:30:30 +0000
Received: by mail-wi0-f179.google.com with SMTP id hr7so957339wib.0
 for <barebox@lists.infradead.org>; Tue, 06 Aug 2013 14:30:06 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 6 Aug 2013 23:30:06 +0200
Message-ID: <CACbe1ruo=co1qZAJqaBYG7R6MXcL2V9NYHT6BsKyidLg9i+xHg@mail.gmail.com>
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
Subject: Re: barebox-2013.07.0 / barebox-2013.08.0 splash, bmp, png problems
 on Mini2440 -- SOLVED
To: barebox@lists.infradead.org

2013/8/6 Pawel Suchanecki <pawel.suchanecki@gmail.com>:
> What am I doing wrong?

Hello again,

I found the solution, it was only due to my mistake, as I selected the
wrong LCD type.

When changed to support A70:

[ ] Support N35 display (240x320)
[*] Support A70 display (800x480)

my 7" LCD shows the barebox logo just fine!

Sorry for bothering with ... stupid question.

Thanks,
Pawel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
