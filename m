Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TfbWh-0005Ah-Lv
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 19:18:01 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
Date: Mon, 03 Dec 2012 20:17:50 +0100
In-Reply-To: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com> (Renaud
 Barbier's message of "Mon, 3 Dec 2012 18:08:16 +0000")
Message-ID: <87txs3ymg1.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH 00/18] UBIFS support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Renaud Barbier <renaud.barbier@ge.com> writes:

> This patchset adds UBIFS support to Barebox. It includes the core UBIFS
> support and more recent patches found in the U-boot git tree.
> It has been tested on a PPC system  by mounting a NOR flash UBI volume,
> copying the kernel to memory and booting it.

Hi Renaud,

That's a really huge piece of a patchset.

Please tell me that almost 100% of the code was taken out of the linux
kernel. Even better, are there any patches in there that are linux kernel
copies, so that review is not necessary ?

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
