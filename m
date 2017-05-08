Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp69.iad3a.emailsrvr.com ([173.203.187.69])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7kqX-0004ON-1C
 for barebox@lists.infradead.org; Mon, 08 May 2017 15:45:15 +0000
References: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
 <20170508143410.xdeqghqeehd6mdt5@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <b32120e6-a0b5-4891-5cc9-0389c5a24e5b@mev.co.uk>
Date: Mon, 8 May 2017 16:44:48 +0100
MIME-Version: 1.0
In-Reply-To: <20170508143410.xdeqghqeehd6mdt5@pengutronix.de>
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

On 08/05/17 15:34, Sascha Hauer wrote:
> Hi Ian,
>
> On Mon, May 08, 2017 at 02:39:19PM +0100, Ian Abbott wrote:
>> Hi,
>>
>> I'm not sure if this is a bug or whether I'm doing something wrong.  In
>> barebox 2017.04.0 and earlier, I stored the Ethernet MAC address in a
>> non-volatile ('nv') variable dev.eth0.macaddr=xx:xx:xx:xx:xx:xx and that got
>> propagated to 'global' and the eth0 device on boot:
>
> Yes this is broken. Sorry for breaking it and thank you for reporting it
> ;)
> I just sent out a fix, you're on Cc. Please let me know if this works.
>
> Sascha

Hi Sacha,

I tried it.  I had to modify the patch slightly to apply it directly to 
2017-05-0 due to other changes on master (I think mostly due to commit
0071bacb4c7cab21c9fab8540f5aa9922a270a85 ("param: remove unnecessary 
device_d * argument")).

The global.dev.eth0.ethaddr variable is not created, but the 
nv.dev.eth0.ethaddr variable does now get applied to the eth0 device.  I 
think this is as expected.

The other problem I mentioned about setting global variables is still 
present.  That is:

barebox@xxxx:/ nv -r quux
barebox@xxxx:/ global -r quux
barebox@xxxx:/ nv quux=foo
barebox@xxxx:/ global quux=bar
barebox@xxxx:/ echo ${global.quux}
foo
barebox@xxxx:/ global quux=i_really_mean_it
barebox@xxxx:/ echo ${global.quux}
foo

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
