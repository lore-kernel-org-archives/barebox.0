Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI8U9-0008Kx-Ax
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 07:01:04 +0000
Received: by mail-wm0-x242.google.com with SMTP id 70so8788139wme.1
 for <barebox@lists.infradead.org>; Tue, 06 Jun 2017 00:00:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170606065321.rlogztxfb4l4ap5e@pengutronix.de>
References: <20170602120105.20663-1-aleksander@aleksander.es>
 <20170606065321.rlogztxfb4l4ap5e@pengutronix.de>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 6 Jun 2017 09:00:19 +0200
Message-ID: <CAAP7ucL3sUqHfDxgTN86KgjbB_pBR1kktVOpNKRz=0f4=gN41w@mail.gmail.com>
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
Subject: Re: [PATCH] sandbox: new --stdinout option to enable a bidirectional
 console
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 6, 2017 at 8:53 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> In addition to allowing read-only and write-only consoles with --stdin
>> and --stdout, we now allow bidirectional read/write consoles with FIFO
>> files. This is e.g. to allow doing RATP over the FIFO based consoles.
>>
>> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
>> ---
>>  arch/sandbox/os/common.c | 53 ++++++++++++++++++++++++++++++++++++++----------
>>  1 file changed, 42 insertions(+), 11 deletions(-)
>
> Applied, thanks.
>
> Have you tried RATP over the FIFO consoles? Does it work as expected?

Not completely, because the pyserial backend in bbremote didn't want
FIFOs, but I did try with my own minimal RATP implementation and it
did work ok up to where I tested.

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
