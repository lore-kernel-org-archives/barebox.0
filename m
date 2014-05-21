Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail01.prevas.se ([62.95.78.3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn05o-0008V3-Jf
 for barebox@lists.infradead.org; Wed, 21 May 2014 06:33:38 +0000
From: Esben Haabendal <esben.haabendal@dev.prevas.dk>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
 <1400533184-668-6-git-send-email-s.hauer@pengutronix.de>
 <537B6FDF.2050507@gmail.com>
Date: Wed, 21 May 2014 08:35:11 +0200
In-Reply-To: <537B6FDF.2050507@gmail.com> (Sebastian Hesselbarth's message of
 "Tue, 20 May 2014 17:08:15 +0200")
Message-ID: <87ppj7r65c.fsf@xpc.ulstruplund.dk>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/6] of: Drop devicetree merge support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:

> On 05/19/2014 10:59 PM, Sascha Hauer wrote:
>> I assume I am the only person knowing that barebox is able to
>> merge devicetrees. This feature seems broken for a while now since
>> trying to merge devicetress results in:
>> 
>> unflatten: too many end nodes
>
> Uhm, I know about it because I see it every time I load an updated
> dtb on my hacky Chromecast barebox. Loading the dtb a second time
> again works then..
>
> Anyway, I don't want to merge any trees but overwrite the existing,
> so I am fine with the removal ;)

I actually wanted to merge dtb trees for a project at hand, but ended up
doing the merge before hand.

So no, you were not the only one knowing about it ;)

/Esben

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
