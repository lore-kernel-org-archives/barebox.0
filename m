Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og102.obsmtp.com ([64.18.0.143])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfpqm-0007Y6-7M
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 10:35:41 +0000
Message-ID: <50BDD1F7.6070706@ge.com>
Date: Tue, 04 Dec 2012 10:35:35 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
 <87txs3ymg1.fsf@free.fr>
In-Reply-To: <87txs3ymg1.fsf@free.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/18] UBIFS support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 03/12/2012 19:17, Robert Jarzmik wrote:
> Hi Renaud,
>
> That's a really huge piece of a patchset.
>
> Please tell me that almost 100% of the code was taken out of the linux
> kernel. Even better, are there any patches in there that are linux kernel
> copies, so that review is not necessary ?
It is actually derived from U-boot which derive it from Linux.  It would 
not be
as recent as the Linux code.
If you need the code to be fully derived from Linux, then ignore it. 
This is something
I hopefully can work on in the future (N months).
I submitted it as I saw a couple people needing ubifs support.
They may be willing to work on it.













>
> Cheers.
>
> --
> Robert


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
