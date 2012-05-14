Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STqdr-0006lA-BQ
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:28:32 +0000
Received: by yhjj52 with SMTP id j52so4682500yhj.36
 for <barebox@lists.infradead.org>; Mon, 14 May 2012 01:28:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120514081846.GE21318@pengutronix.de>
References: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
 <20120514081846.GE21318@pengutronix.de>
Date: Mon, 14 May 2012 12:28:28 +0400
Message-ID: <CAA4bVAHAn3aiB1d6KnJ_LhmnKje_DWn8vrW4RcCVnMgEBXvbcQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 0/3] MIPS: add the initial support for lowlevel init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14 May 2012 12:18, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, May 13, 2012 at 09:24:41PM +0400, Antony Pavlov wrote:
>> This patch series introduce the initial support for lowlevel init
>> for the MIPS boards.
>>
>> In the future low level initialization will be used
>> for cache initialization.
>>
>> [RFC 1/3] MIPS: move start.S code to .text_entry section
>> [RFC 2/3] MIPS: add the initial support for lowlevel init
>> [RFC 3/3] MIPS: malta: add bogus lowlevel init
>
> Looks mostly good except that you have some whitespace damage in your
> patches.

Hmm. checkpatch.pl didn't find anything. Can you give any sample, please.

> Can we drop 3/3 until we have something useful in the lowlevel
> init?

Just now I'm working on cache support for MIPS. I think we can get
useful in the lowlevel init in a few days :))

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
