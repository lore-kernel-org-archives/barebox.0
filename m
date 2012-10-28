Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSUWZ-00043C-9x
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 15:11:40 +0000
Received: by mail-ie0-f177.google.com with SMTP id e14so5589768iej.36
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 08:11:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121027122426.GE1641@pengutronix.de>
References: <1351231135-17324-1-git-send-email-antonynpavlov@gmail.com>
 <20121027122426.GE1641@pengutronix.de>
Date: Sun, 28 Oct 2012 19:11:37 +0400
Message-ID: <CAA4bVAFWO_CK8U9dDBTn+5eo686CuYhAbYRV5Nxdqr0KC5eJcw@mail.gmail.com>
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
Subject: Re: [RFC 0/3] readline: add ctrl-w handling (cut-the-last-word)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 27 October 2012 16:24, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Antony,
>
> On Fri, Oct 26, 2012 at 09:58:52AM +0400, Antony Pavlov wrote:
>> The popular 'bash' command interpreter has the ctrl-w keystroke for
>> cutting the last word in the command line. This keystroke is
>> very handy for me and I really miss it in barebox.
>>
>> This patch series adds ctrl-w support to barebox's readline
>> and in addition fixes a typo.
>>
>> [RFC 1/3] readline: move backspace key handling to the DO_BACKSPACE
>> [RFC 2/3] readline: add ctrl-w handling (cut-the-last-word)
>> [RFC 3/3] readline: fix the 'new blank line at EOF' typo
>
> Looks good.

So apply the patches, please.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
