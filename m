Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp93.ord1c.emailsrvr.com ([108.166.43.93])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8kiU-0004b6-VY
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:49:05 +0000
References: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
 <4208aa68-1cb6-0224-781a-4572a78ba6fd@mev.co.uk>
 <20170508181206.cibrghbpdrjbryx4@pengutronix.de>
 <5a78275c-9b57-567d-c068-81157b0554c4@mev.co.uk>
 <20170511061719.73uskd22dpy7v2av@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <aa3c66bb-4ed5-93f7-c339-399d423b878d@mev.co.uk>
Date: Thu, 11 May 2017 10:48:38 +0100
MIME-Version: 1.0
In-Reply-To: <20170511061719.73uskd22dpy7v2av@pengutronix.de>
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
Subject: Re: Setting MAC address from nv variable broken in barebox 2017.05.0?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11/05/17 07:17, Sascha Hauer wrote:
> On Tue, May 09, 2017 at 11:02:12AM +0100, Ian Abbott wrote:
>> While on the subject, what is the desired behaviour when removing an nv
>> variable?  Currently, removing an nv variable also deletes a global with the
>> same name, even if the global has changed value in the meantime:
>>
>> barebox@xxxx:/ global -r quux
>> barebox@xxxx:/ nv -r quux
>> barebox@xxxx:/ nv quux=foo
>> barebox@xxxx:/ global quux=bar
>> barebox@xxxx:/ nv -r quux
>> barebox@xxxx:/ global
>>   ... list of globals but 'quux' is missing ...
>>
>> In 2017-04-0, the global variable remained, although its value was cleared.
>
> Are you sure the global variable is removed? I can't reproduce this
> here. Here the globalvar is cleared as it used to be. However, this
> behaviour is not very nice and could be changed with the following
> patch.

Sorry, my mistake.  You are correct, the global var remains but is cleared.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
