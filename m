Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-f178.google.com ([209.85.216.178])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWk9Q-0005LG-FX
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 13:31:46 +0000
Received: by mail-qt0-f178.google.com with SMTP id w20so16762158qtb.1
 for <barebox@lists.infradead.org>; Thu, 26 Jan 2017 05:31:24 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170126073003.rpufxl2us6mc5i4b@pengutronix.de>
References: <CA+-urNQJbuE44V93+BERHf9r5kEKzn5mBJ5e=t9932TtR7+0Yw@mail.gmail.com>
 <20170126073003.rpufxl2us6mc5i4b@pengutronix.de>
From: Frank Hunleth <fhunleth@troodon-software.com>
Date: Thu, 26 Jan 2017 08:30:01 -0500
Message-ID: <CA+-urNSDMkgwn7zCAV2RAQCwaSov_uGRiMzUtrLqPkZGK+9Rrw@mail.gmail.com>
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
Subject: Re: Accessing non-volatile variables from Linux
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sasch,

On Thu, Jan 26, 2017 at 2:30 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Frank,
>
> On Wed, Jan 25, 2017 at 02:21:55PM -0500, Frank Hunleth wrote:
>> Hi,
>>
>> I'm wondering if it's possible to read and modify Barebox environment
>> variables from Linux in a way similar to U-Boot's fw_printenv and
>> fw_setenv. If that's not possible, is there another way for communicating
>> between Linux and Barebox? Apologies if I totally missed a section in the
>> docs that describes this.
>
> There is scripts/bareboxenv.c which gets compiled for the target when
> CONFIG_BAREBOXENV_TARGET is enabled. This allows you to unpack the
> barebox environment device (mtd/partition) to a directory and back to
> the device after modifying. There is no direct getenv/setenv
> functionality, you would have to do a manual echo/cat to the variable
> files.

Thanks - That sounds like what I'm looking for. I'll check it out.

Also, Trent, thanks for the alternative idea.

Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
