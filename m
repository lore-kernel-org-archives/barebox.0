Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from secure11.t-systems.com ([46.29.101.1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YxWcC-0002Ap-Fl
 for barebox@lists.infradead.org; Wed, 27 May 2015 08:23:05 +0000
Received: from p50989a7d.dip0.t-ipconnect.de ([80.152.154.125]
 helo=MAIL-10-4.ATS-Intranet.local)
 by secure11.t-systems.com with smtp (envelope-from
 <Andreas.Geisenhainer@ATSonline.de>) id 1YxWL6-0008C5-Vw
 for barebox@lists.infradead.org; Wed, 27 May 2015 10:05:25 +0200
Received: from [10.2.1.246] (helo=mail-10-4.ATS-Intranet.local)
 by MAIL-10-4.ATS-Intranet.local with G Data MailSecurity;
 for <barebox@lists.infradead.org>; Wed, 27 May 2015 10:05:24 +0200
Message-ID: <55657AC3.3040609@atsonline.de>
Date: Wed, 27 May 2015 10:05:23 +0200
From: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
MIME-Version: 1.0
References: <556441EF.8040702@atsonline.de>
 <20150527064145.GO6325@pengutronix.de>
In-Reply-To: <20150527064145.GO6325@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bareboxenv - tricky ptxdist behavior
To: barebox@lists.infradead.org

On 27/05/15 08:41 AM, Sascha Hauer wrote:
> Hi Alexander,
>
> On Tue, May 26, 2015 at 11:50:39AM +0200, Alexander Richter wrote:
>> Hallo,
>>
>> I just used bareboxenv tool in linux userspace after a long
>> troublesome trip through ptxdist.
>> That would not have to be, if the description of "build bareboxenv
>> tool for target" in barebox config has said, that i has to enable
>> the tool  platformconfig.
> Is there a "in" missing in the sentence above? There is a platformconfig
> in ptxdist, but this is a file or a ptxdist subcommand, not a tool.
> Could you clarify what your problem was? I do not really understand.

Let me pitch in here.

Alexander tried to build `bareboxenv` by enabling it
within the barebox.config. He succeeded in doing so.
But the tool did not show up in the final rootfs because
the option "install bareboxenv" from platformconfig was not
enabled.

Yes, the "build bareboxenv" tooltip cleary states that it will
be build. But there's no word about the "install barebox" option
in platformconfig.

At this point we wished for a small hint, pointing us in the right
direction.

I have no idea how to resolve this properly since barebox
(and bareboxenv) can be build without ptxdist and pointing to a
nonexisting (ptxdist-)configuration will get people confused.



regards
Andreas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
