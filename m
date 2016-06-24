Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x244.google.com ([2607:f8b0:4002:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGJBb-0007Mr-Ph
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 04:57:48 +0000
Received: by mail-yw0-x244.google.com with SMTP id f75so13682659ywb.3
 for <barebox@lists.infradead.org>; Thu, 23 Jun 2016 21:57:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <878txwpdkh.fsf@gmail.com>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-2-git-send-email-andrew.smirnov@gmail.com>
 <878txwpdkh.fsf@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2016 21:57:22 -0700
Message-ID: <CAHQ1cqHjWALuHsUgRxVTdUFVKN7oU1ssKsJLrhNZhVpgaeh=yA@mail.gmail.com>
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
Subject: Re: [PATCH 2/3] GUI: Add code to draw simple graphics
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jun 23, 2016 at 12:30 AM, Holger Schurig
<holgerschurig@gmail.com> wrote:
>> +config 2D_PRIMITIVES
>> +       bool
>> +
>
> Why no help text?   With help text, it will be discoverable in "make
> xconfig".

It's an internal configuration symbol meant to be specified as a
dependency of other configuration options (other examples of such
options would be OFTREE or DTC). There's no benefit in exposing that
symbol to a user.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
