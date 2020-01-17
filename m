Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isPL8-0003am-RE
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 10:59:00 +0000
Received: by mail-qk1-x72b.google.com with SMTP id t129so22225016qke.10
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 02:58:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20200117103821.6lcodmreajfjadbt@pengutronix.de>
References: <CALtZhhPbqBmyHUDqb+mg=JfAP1GioitSSE0d119ACf9kw5J_CQ@mail.gmail.com>
 <20200117103821.6lcodmreajfjadbt@pengutronix.de>
From: Frederick Gotham <cauldwell.thomas@gmail.com>
Date: Fri, 17 Jan 2020 10:58:57 +0000
Message-ID: <CALtZhhNY8C6U3va15Jm5n0TaEbV+MLFhLv32S7K0C++etuyaoA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: cauldwell.thomas@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Cannot get 'wd' to appear
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 1/17/20, Sascha Hauer <s.hauer@pengutronix.de> wrote:

>> What do I have to do in order to get the "wd" command to work?
>
> You'll need to enable the CMD_WD option. It's in the command section.


Thank you, that worked, I have the "wd" command now.

When I run it, it says:  Watchdog fails: 'No such device'

If I navigate into "/dev", there is not file in there named "watchdog"
(or anything similar like "wdt").

Is it possible to get Barebox to work with the Intel TCO watchdog timer?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
