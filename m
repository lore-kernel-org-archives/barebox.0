Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp69.iad3a.emailsrvr.com ([173.203.187.69])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKkOB-0008Ck-Qj
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 11:53:41 +0000
Received: from smtp9.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp9.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 7E57B587E
 for <barebox@lists.infradead.org>; Tue, 13 Jun 2017 07:53:18 -0400 (EDT)
Received: by smtp9.relay.iad3a.emailsrvr.com (Authenticated sender:
 siepeng-AT-mev.co.uk) with ESMTPSA id 455335869
 for <barebox@lists.infradead.org>; Tue, 13 Jun 2017 07:53:18 -0400 (EDT)
References: <20170613075311.jwdw4j4pv3vhvusb@pengutronix.de>
 <381afd4b-3d4b-a32a-5679-cd7aa6a22129@mev.co.uk>
 <a2c0e379-1c8b-a977-c6f5-5b188becff94@mev.co.uk>
 <e85f684f-6832-09fc-0a0a-8a3771b093ed@mev.co.uk>
 <20170613113820.f2jr6tqpt63bdymu@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <56502b6d-3551-03c6-fb74-b37e51b92530@mev.co.uk>
Date: Tue, 13 Jun 2017 12:53:17 +0100
MIME-Version: 1.0
In-Reply-To: <20170613113820.f2jr6tqpt63bdymu@pengutronix.de>
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
Subject: Re: v2017.06.0
To: barebox@lists.infradead.org

On 13/06/17 12:38, Sascha Hauer wrote:
> On Tue, Jun 13, 2017 at 10:52:33AM +0100, Ian Abbott wrote:
>> On 13/06/17 10:43, Ian Abbott wrote:
>>> On 13/06/17 10:42, Ian Abbott wrote:
>>>> On 13/06/17 08:53, Sascha Hauer wrote:
>>>>> barebox v2017.06.0 is available. I originally wanted to wait for the
>>>>> fix of the OMAP Nand controller issue, but unfortunately there's no
>>>>> full solution in sight. Since waiting longer would effectively mean that
>>>>> we skip the June release, I decided to do a release with this bug still
>>>>> standing.
>>>>
>>>> Thanks Sasha.  Could you git push the release, please?
>>>
>>> I mean "Sascha".  Sorry!
>>
>> Oh, I see the tag is in the repository, but it's currently three commits
>> ahead of origin/master.
>
> Try again, forgot to push master.

Thanks.  All okay now.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
