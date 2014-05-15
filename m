Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkv9N-0005Uu-3s
 for barebox@lists.infradead.org; Thu, 15 May 2014 12:52:41 +0000
Received: by mail-ee0-f43.google.com with SMTP id d17so639215eek.30
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 05:52:17 -0700 (PDT)
Message-ID: <5374B87D.3000501@gmail.com>
Date: Thu, 15 May 2014 14:52:13 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1400144937-6006-1-git-send-email-holgerschurig@gmail.com>
 <537486DB.9010302@gmail.com> <20140515124006.GJ5858@pengutronix.de>
In-Reply-To: <20140515124006.GJ5858@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: rename "gpiolib" -> "gpioinfo"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 05/15/2014 02:40 PM, Sascha Hauer wrote:
> On Thu, May 15, 2014 at 11:20:27AM +0200, Sebastian Hesselbarth wrote:
>> On 05/15/2014 11:08 AM, Holger Schurig wrote:
>>> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
>>
>> Subject: rename "gpiolib" -> "gpioinfo"
>>
>> How about joining the gpio related commands to "gpio"
>> and use e.g. -l for list?
>
> Which commands do you mean? gpio_direction_output / gpio_set_value
> and friends? I wouldn't change these as we would end up with four
> single letter options (for direction_output, set_value, direction_input,
> get_value) which are hard to memorize.

Maybe I was just irritated by the simple rename of gpiolib to
gpioinfo - which could also be gpiolist or gpio_info to match
the other gpio friends.

Just the first idea that came into my mind when I saw a patch
for the rename - no show-stopper of course.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
