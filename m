Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgDRu-0000D2-JL
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 11:47:35 +0000
Message-ID: <50BF3450.50502@ge.com>
Date: Wed, 05 Dec 2012 11:47:28 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
 <87txs3ymg1.fsf@free.fr> <50BDD1F7.6070706@ge.com> <87k3sxzijh.fsf@free.fr>
In-Reply-To: <87k3sxzijh.fsf@free.fr>
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

On 04/12/2012 20:09, Robert Jarzmik wrote:
> Renaud Barbier <renaud.barbier@ge.com> writes:
>
>> On 03/12/2012 19:17, Robert Jarzmik wrote:
>>> Hi Renaud,
>>>
>>> That's a really huge piece of a patchset.
>>>
>>> Please tell me that almost 100% of the code was taken out of the linux
>>> kernel. Even better, are there any patches in there that are linux kernel
>>> copies, so that review is not necessary ?
>> It is actually derived from U-boot which derive it from Linux.  It would not be
>> as recent as the Linux code.
>> If you need the code to be fully derived from Linux, then ignore it. This is
>> something
>> I hopefully can work on in the future (N months).
> It's up to Sascha, but I think out of U-boot is fine too.  So are all the
> patches a full copy paste of U-boot, or are there specific parts (adaptation) to
> barebox ?

99% of the updates happened in the file ubifs.c. The rest is cosmetic 
(super.c):

There is code specific to U-boot that has been reworked:
ubifs_load was the basis to create ubifs_open, ubifs_read, ubifs_close
ubifs_ls was the basis to create ubifs_opendir, ubifs_closedir
ubifs_stat is also derived from U-boot code.

or  renamed
ubifs_printdir -> ubifs_doreaddir (similar to Linux code)


There is code added to Barebox:
ubifs_probe,  ubifs_remove.

To do:
zlib is commented out. Only lzo support has been tested.
Entry point:  there is no 'link' entry point.

>
> I'd think that if you tested the patches succesfully in barebox, and if the
> adaptation is very small, we will review only the adaptation ... hence the
> question, where is the adaptation ?
>
> Cheers.
>
> --
> Robert


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
