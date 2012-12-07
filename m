Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgtd9-0002fM-MD
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 08:50:00 +0000
Received: by mail-ob0-f177.google.com with SMTP id uo13so194170obb.36
 for <barebox@lists.infradead.org>; Fri, 07 Dec 2012 00:49:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20121207083012.GB10369@pengutronix.de>
References: <1354792603-15915-1-git-send-email-fabio.porcedda@gmail.com>
 <20121207065249.GK8327@game.jcrosoft.org>
 <20121207083012.GB10369@pengutronix.de>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 7 Dec 2012 09:49:38 +0100
Message-ID: <CAHkwnC8bGPMuC+QJOeTQsRabtGkwkvkrxLhAL-Q53YxoBRMAcg@mail.gmail.com>
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
Subject: Re: [PATCH v2] at91: reorder BOARDINFO alphabetically
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 7, 2012 at 9:30 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Dec 07, 2012 at 07:52:49AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> On 12:16 Thu 06 Dec     , Fabio Porcedda wrote:
>> > This is to have a nicely ordered list and to decrease the
>> > likelihood of a conflict when adding a new board.
>> >
>> > Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
>> > Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> > ---
>> > v2:
>> NAK
>>
>> I order them by Kconfig keepo  it that way
>
> I'd say it makes more sense to keep them in the order the user actually
> sees them, it makes it easier to find the entries. What's the value in
> ordering them by Kconfig name?
> If you order them by Kconfig name, the Calao boards end up in three
> different places in the user visible view.

IMHO it's easier and nicer to order by text, in fact the entries were not even
completely ordered by Kconfig.

--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
