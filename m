Delivery-date: Wed, 02 Jun 2021 14:04:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loPbT-00026v-MX
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 14:04:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loPbO-0003AK-Lj
	for lore@pengutronix.de; Wed, 02 Jun 2021 14:04:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=683vxhHkyK3bLbx5uhPSM1mwlvPkUU3w/mP8CaHejxY=; b=qeJsfVmrhdePGbwazfEu0P//mF
	IXc9B317FVuUU+4G4U15Nm/YJqY1rmYXLn3vvv7EjS2FPGWFOGhD4aFo9RvBIzTPf26sXQYAHRCMn
	l/VL4GFdjvkz/H79xd7+3+GAv2D/ow/V5aCxM08naHV4gSwu4e64ZDZNuCAxw6mYI7v7RJHiYAzAC
	nvF7KV9aQYgQ5eE3fXMLuoRBhaIDCzU1CTAfQIWA9DdUNCGKIFSS9F5YYsZRuu0x1GQPRj7jIQZSD
	A/l+Jj+/lcRLZGxoN3QUtZZ7FFGGBXzCqLveYrwZ9LSi6q+R3Gghs23fBm2by1no+t6ZYcHcN9F0c
	aX6dbQgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loPZZ-003sX7-T6; Wed, 02 Jun 2021 12:02:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loP9c-003m48-Vm
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 11:35:25 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1loP9b-0007zF-LO; Wed, 02 Jun 2021 13:35:19 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210531065520.12385-1-a.fatoum@pengutronix.de>
 <20210531065520.12385-11-a.fatoum@pengutronix.de>
 <6c118a9a88836394d4d35741a156f9933e1246d2.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3be1d6de-ad08-f42b-557d-ebfd11006265@pengutronix.de>
Date: Wed, 2 Jun 2021 13:35:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <6c118a9a88836394d4d35741a156f9933e1246d2.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_043521_093317_B11D3F62 
X-CRM114-Status: GOOD (  26.78  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/13] test: add first sample tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 02.06.21 13:33, Rouven Czerwinski wrote:
> Hi Ahmad,
> 
> On Mon, 2021-05-31 at 08:55 +0200, Ahmad Fatoum wrote:
>> The test can be run manually with e.g.
>>
>>   labgrid-pytest --lg-env test/arm/qemu_virt64_defconfig.yaml test/py
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  test/.gitignore       |  1 +
>>  test/__init__.py      |  0
>>  test/conftest.py      | 34 ++++++++++++++++++++++++++++++++++
>>  test/py/__init__.py   |  0
>>  test/py/helper.py     | 38 ++++++++++++++++++++++++++++++++++++++
>>  test/py/test_shell.py | 37 +++++++++++++++++++++++++++++++++++++
>>  6 files changed, 110 insertions(+)
>>  create mode 100644 test/.gitignore
>>  create mode 100644 test/__init__.py
>>  create mode 100644 test/conftest.py
>>  create mode 100644 test/py/__init__.py
>>  create mode 100644 test/py/helper.py
>>  create mode 100644 test/py/test_shell.py
>>
>> diff --git a/test/.gitignore b/test/.gitignore
>> new file mode 100644
>> index 000000000000..bee8a64b79a9
>> --- /dev/null
>> +++ b/test/.gitignore
>> @@ -0,0 +1 @@
>> +__pycache__
>> diff --git a/test/__init__.py b/test/__init__.py
>> new file mode 100644
>> index 000000000000..e69de29bb2d1
>> diff --git a/test/conftest.py b/test/conftest.py
>> new file mode 100644
>> index 000000000000..5acc1a99e18e
>> --- /dev/null
>> +++ b/test/conftest.py
>> @@ -0,0 +1,34 @@
>> +import pytest
>> +import os
>> +from .py import helper
>> +
>> +
>> +@pytest.fixture(scope='function')
>> +def barebox(strategy, target):
>> +    strategy.transition('barebox')
>> +    return target.get_driver('BareboxDriver')
>> +
>> +
>> +@pytest.fixture(scope='function')
>> +def shell(strategy, target):
>> +    strategy.transition('shell')
>> +    return target.get_driver('ShellDriver')
> 
> This fixture is not used anywhere, remove it.

See previous mail.

>> +
>> +
>> +@pytest.fixture(scope="session")
>> +def barebox_config(strategy, target):
>> +    strategy.transition('barebox')
>> +    command = target.get_driver("BareboxDriver")
>> +    return helper.get_config(command)
>> +
>> +def pytest_configure(config):
>> +    if 'LG_BUILDDIR' not in os.environ:
>> +        if 'KBUILD_OUTPUT' in os.environ:
>> +            os.environ['LG_BUILDDIR'] = os.environ['KBUILD_OUTPUT']
>> +        elif os.path.isdir('build'):
>> +            os.environ['LG_BUILDDIR'] = os.path.realpath('build')
>> +        else:
>> +            os.environ['LG_BUILDDIR'] = os.getcwd()
>> +
>> +    if os.environ['LG_BUILDDIR'] is not None:
>> +        os.environ['LG_BUILDDIR'] = os.path.realpath(os.environ['LG_BUILDDIR'])
>> diff --git a/test/py/__init__.py b/test/py/__init__.py
>> new file mode 100644
>> index 000000000000..e69de29bb2d1
>> diff --git a/test/py/helper.py b/test/py/helper.py
>> new file mode 100644
>> index 000000000000..4a68e83669ba
>> --- /dev/null
>> +++ b/test/py/helper.py
>> @@ -0,0 +1,38 @@
>> +from labgrid.driver import BareboxDriver
>> +import pytest
>> +import os
>> +from itertools import filterfalse
>> +
>> +
>> +def get_config(command):
>> +    """Returns the enabled config options of barebox, either from
>> +    a running instance if supported or by looking into .config
>> +    in the build directory.
>> +    Args:
>> +        command (BareboxDriver): An instance of the BareboxDriver
>> +    Returns:
>> +        list: list of the enabled config options
>> +    """
>> +    assert isinstance(command, BareboxDriver)
>> +
>> +    out, err, returncode = command.run("cat /env/data/config")
>> +    if returncode != 0:
>> +        try:
>> +            with open(os.environ['LG_BUILDDIR'] + "/.config") as f:
> 
> Please don't use the LG_ namespace currently used by labgrid, this
> variable is introduced by your wrapper script, something like
> BB_LG_BUILDDIR indicates that this is only used in the barebox test
> scripts.

Labgrid filters out anything that doesn't start with LG_ AFAIK.

> 
>> +                out = f.read().splitlines()
>> +        except OSError:
>> +            return set()
>> +
>> +    options = set()
>> +    for line in out:
>> +        if line and line.startswith("CONFIG_"):
>> +            options.add(line.split('=')[0])
>> +    return options
>> +
>> +
>> +def skip_disabled(config, *options):
>> +    if bool(config):
>> +        undefined = list(filterfalse(config.__contains__, options))
>> +
>> +        if bool(undefined):
>> +            pytest.skip("skipping test due to disabled " + (",".join(undefined)) + " dependency")
>> diff --git a/test/py/test_shell.py b/test/py/test_shell.py
>> new file mode 100644
>> index 000000000000..0d2dfe38c5dd
>> --- /dev/null
>> +++ b/test/py/test_shell.py
>> @@ -0,0 +1,37 @@
>> +import pytest
>> +from .helper import *
>> +
>> +
>> +def test_barebox_true(barebox, barebox_config):
>> +    skip_disabled(barebox_config, "CONFIG_CMD_TRUE")
>> +
>> +    _, _, returncode = barebox.run('true')
>> +    assert returncode == 0
>> +
>> +
>> +def test_barebox_false(barebox, barebox_config):
>> +    skip_disabled(barebox_config, "CONFIG_CMD_FALSE")
>> +
>> +    _, _, returncode = barebox.run('false')
>> +    assert returncode == 1
>> +
>> +def test_barebox_md5sum(barebox, barebox_config):
>> +    skip_disabled(barebox_config, "CONFIG_CMD_MD5SUM", "CONFIG_CMD_ECHO")
>> +
>> +    barebox.run_check("echo -o md5 test")
>> +    out = barebox.run_check("md5sum md5")
>> +    assert out == ["d8e8fca2dc0f896fd7cb4cb0031ba249  md5"]
>> +
>> +def test_barebox_version(barebox, barebox_config):
>> +    skip_disabled(barebox_config, "CONFIG_CMD_VERSION")
>> +
>> +    stdout, _, returncode = barebox.run('version')
>> +    assert 'barebox' in stdout[1]
>> +    assert returncode == 0
>> +
>> +def test_barebox_no_err(barebox, barebox_config):
>> +    skip_disabled(barebox_config, "CONFIG_CMD_DMESG")
>> +
>> +    # TODO extend by err once all qemu platforms conform
>> +    stdout, _, _ = barebox.run('dmesg -l crit,alert,emerg')
>> +    assert stdout == []
> 
> - rcz
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

