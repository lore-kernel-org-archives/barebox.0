Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TU0Ik-0000Q6-7T
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:19:38 +0000
Received: by mail-ie0-f177.google.com with SMTP id e14so4032939iej.36
 for <barebox@lists.infradead.org>; Thu, 01 Nov 2012 12:19:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
Date: Thu, 1 Nov 2012 23:19:36 +0400
Message-ID: <CAA4bVAFj-_LAKnedX-epOv_9EatCvYGCRLe3SS=g8QqDTw+q_g@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/2] Y-Modem implementation change
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 1 November 2012 21:37, Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> Hi everyone,
>
> This patchset aims at changing the Y-Modem protocol implementation.
> You have already seen the RFC version, this is the next version, which :
>  - provides a much more tested version
>  - is ready for review
>
> The following comments have been taken into account :
>  - Antony: testing on a serial line
>  - Sascha: split between protocol and commands
>  - Jean-Christophe: kermit protocol change
>
> So before doing the real review, could I ask of you :
>  - Antony: could you redo your test over a serial line by applying only
>            the first patch so that you can compare loady and loady2 ?
>            Don't use "loady2 -g", as Y-Modem/G protocol requires a
>            lossless line (USB), and a serial line cannot guarantee it.

I have redone the test.

Sorry, but the new 'loady2' does not work. I tested it over 9600 and
over 115200 serial line.

>  - Sascha: does the split command/protocol suit you ?
>  - Jean-Christophe: I left the loadb implementation as it is. The goal
>                     of the patch is to change X-Modem and Y-Modem(G)
>                     implementation, not kermit. Could you test that I
>                     have not created a regression of loadb ?
>
> Cheers.
>
> --
> Robert
>
> Robert Jarzmik (2):
>   commands: change Y-Modem implementation
>   commands: remove old Y-Modem implementation
>
>  commands/Makefile   |    4 +-
>  commands/loadb.c    |  102 +------
>  commands/loads.c    |    1 -
>  commands/loadxy.c   |  238 ++++++++++++++++
>  commands/xymodem.c  |  552 ++++++++++++++++++++++++++++++++++++
>  commands/xyzModem.c |  785 ---------------------------------------------------
>  include/xymodem.h   |   25 ++
>  include/xyzModem.h  |  109 -------
>  8 files changed, 826 insertions(+), 990 deletions(-)
>  create mode 100644 commands/loadxy.c
>  create mode 100644 commands/xymodem.c
>  delete mode 100644 commands/xyzModem.c
>  create mode 100644 include/xymodem.h
>  delete mode 100644 include/xyzModem.h
>
> --
> 1.7.10
>



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
