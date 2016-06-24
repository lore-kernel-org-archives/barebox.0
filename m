Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x236.google.com ([2607:f8b0:4002:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGJ3Y-0004Lq-Jo
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 04:49:29 +0000
Received: by mail-yw0-x236.google.com with SMTP id l125so89704486ywb.2
 for <barebox@lists.infradead.org>; Thu, 23 Jun 2016 21:49:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <8760t0pdi7.fsf@gmail.com>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
 <8760t0pdi7.fsf@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2016 21:49:06 -0700
Message-ID: <CAHQ1cqH43fc3BegV2bLBUPhtGRNbjCoFDVNcXoeqnXLcK5jOVw@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] GUI: Add fbtest command
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

On Thu, Jun 23, 2016 at 12:31 AM, Holger Schurig
<holgerschurig@gmail.com> wrote:
> I'm unsure if an "fbtest" command will be helpful.
>
> Why don't you expose the various primitives (lines, circles, lines) with
> some commands?  Then people could use this in their boot scripts,
> including the equivalent of an fbtest program.

I don't have a use-case for developing a drawing framework like you
describe, I do however have a use-case for "fbtest" command where it
is being used for manufacturing testing. I also am of the opinion that
expressing algorithms like that would be better in C rather in hush
script.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
